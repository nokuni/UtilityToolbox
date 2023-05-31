//
//  CloudKitManager.swift
//  
//
//  Created by Maertens Yann-Christophe on 31/05/23.
//

import CloudKit

public final class CloudKitManager: ObservableObject {
    
    public init(configuration: CloudConfiguration) {
        self.configuration = configuration
        Task { try await setUpCloud() }
    }
    
    public struct CloudConfiguration {
        public init(accountStatus: String = "",
                    permissionStatus: String = "",
                    username: String = "") {
            self.accountStatus = accountStatus
            self.permissionStatus = permissionStatus
            self.username = username
        }
        public var accountStatus: String
        public var permissionStatus: String
        public var username: String
    }
    
    public var configuration: CloudConfiguration
    
    private enum AccountStatus: String, LocalizedError {
        case couldNotDetermine, available, restricted, noAccount, temporarilyUnavailable, unknown
    }
    
    private enum PermissionStatus: String, LocalizedError {
        case granted, couldNotComplete, denied, initialState, unknown
    }
    
    public func cloudStatus() async throws {
        let status = try await CKContainer.default().accountStatus()
        DispatchQueue.main.async {
            switch status {
            case .couldNotDetermine: self.configuration.accountStatus = AccountStatus.couldNotDetermine.rawValue
            case .available: self.configuration.accountStatus = AccountStatus.available.rawValue
            case .restricted: self.configuration.accountStatus = AccountStatus.restricted.rawValue
            case .noAccount: self.configuration.accountStatus = AccountStatus.noAccount.rawValue
            case .temporarilyUnavailable: self.configuration.accountStatus = AccountStatus.temporarilyUnavailable.rawValue
            @unknown default: self.configuration.accountStatus = AccountStatus.unknown.rawValue
            }
        }
    }
    
    public func fetchUser() async throws {
        let userRecordID = try await CKContainer.default().userRecordID()
        let userIdentity = try await CKContainer.default().userIdentity(forUserRecordID: userRecordID)
        if let givenName = userIdentity?.nameComponents?.givenName { configuration.username = givenName }
    }
    
    public func userID() -> String {
        var userID = ""
        CKContainer.default().fetchUserRecordID { id, error in
            guard let id = id else { return }
            DispatchQueue.main.async { userID = id.recordName }
        }
        return userID
    }
    
    public func requestPermissions() async throws {
        let permission = try await CKContainer.default().requestApplicationPermission(.userDiscoverability)
        DispatchQueue.main.async {
            switch permission {
            case .granted: self.configuration.permissionStatus = PermissionStatus.granted.rawValue
            case .couldNotComplete: self.configuration.permissionStatus = PermissionStatus.couldNotComplete.rawValue
            case .denied: self.configuration.permissionStatus = PermissionStatus.denied.rawValue
            case .initialState: self.configuration.permissionStatus = PermissionStatus.initialState.rawValue
            @unknown default: self.configuration.permissionStatus = PermissionStatus.unknown.rawValue
            }
        }
    }
    
    private func setUpCloud() async throws {
        do {
            try await cloudStatus()
            try await requestPermissions()
            try await fetchUser()
        } catch let error {
            print(error.localizedDescription)
        }
    }
    
    public func addQueryOperation(_ operation: CKDatabaseOperation) {
        CKContainer.default().publicCloudDatabase.add(operation)
    }
    
    public func saveRecord(_ record: CKRecord, and fetch: () -> Void) async throws {
        do {
            try await CKContainer.default().publicCloudDatabase.save(record)
            fetch()
        } catch {
            print("Error saving cloud data")
        }
    }
}
