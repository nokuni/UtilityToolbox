//
//  CloudKitManager.swift
//  
//
//  Created by Maertens Yann-Christophe on 31/05/23.
//

import CloudKit

public final class CloudKitManager: ObservableObject {
    
    public init() {
        container = CKContainer.default()
        database = container.publicCloudDatabase
        AsyncManager.loadContent(content: setUpCloud)
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
    
    public let container: CKContainer
    public let database: CKDatabase
    public var configuration: CloudConfiguration = CloudConfiguration()
    
    private enum AccountStatus: String, LocalizedError {
        case couldNotDetermine, available, restricted, noAccount, temporarilyUnavailable, unknown
    }
    
    private enum PermissionStatus: String, LocalizedError {
        case granted, couldNotComplete, denied, initialState, unknown
    }
    
    /// Update the cloud status.
    public func cloudStatus() async throws {
        let status = try await container.accountStatus()
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
    
    /// Fetch a user from the CloudKit container.
    public func fetchUser() async throws {
        let userRecordID = try await container.userRecordID()
        let userIdentity = try await container.userIdentity(forUserRecordID: userRecordID)
        if let givenName = userIdentity?.nameComponents?.givenName { configuration.username = givenName }
    }
    
    /// Returns the user ID.
    public func userID() -> String {
        var userID = ""
        container.fetchUserRecordID { id, error in
            guard let id = id else { return }
            DispatchQueue.main.async { userID = id.recordName }
        }
        return userID
    }
    
    /// Request permissions to the CloudKit container.
    public func requestPermissions() async throws {
        let permission = try await container.requestApplicationPermission(.userDiscoverability)
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
    
    /// Fetch cloud status, permissions and user.
    private func setUpCloud() async throws {
        do {
            try await cloudStatus()
            try await requestPermissions()
            try await fetchUser()
        } catch let error {
            print(error.localizedDescription)
        }
    }
    
    // MARK: - CRUD
    
    public typealias RecordCompletion = (Result<CKRecord, Error>) -> Void
    public typealias RecordIDCompletion = (Result<CKRecord.ID, Error>) -> Void
    
    /// Create a record on the CloudKit database.
    public func createRecord(recordType: String,
                             recordData: [String: CKRecordValue?],
                             completion: @escaping RecordCompletion) {
        let recordID = CKRecord.ID(recordName: UUID().uuidString)
        let record = CKRecord(recordType: recordType, recordID: recordID)
        
        for (key, value) in recordData {
            record[key] = value
        }
        
        self.database.save(record) { (record, error) in
            if let error = error {
                completion(.failure(error))
            } else if let record = record {
                completion(.success(record))
            }
        }
    }
    
    /// Read a record on the CloudKit database.
    public func fetchRecord(recordID: CKRecord.ID, completion: @escaping RecordCompletion) {
        self.database.fetch(withRecordID: recordID) { (record, error) in
            if let error = error {
                completion(.failure(error))
            } else if let record = record {
                completion(.success(record))
            }
        }
    }
    
    /// Update a record on the CloudKit database.
    public func updateRecord(record: CKRecord,
                             recordData: [String: CKRecordValue],
                             completion: @escaping RecordCompletion) {
        for (key, value) in recordData {
            record[key] = value
        }
        
        self.database.save(record) { (record, error) in
            if let error = error {
                completion(.failure(error))
            } else if let record = record {
                completion(.success(record))
            }
        }
    }
    
    /// Update a record on the CloudKit database.
    public func deleteRecord(recordID: CKRecord.ID, completion: @escaping RecordIDCompletion) {
        self.database.delete(withRecordID: recordID) { (recordID, error) in
            if let error = error {
                completion(.failure(error))
            } else if let recordID = recordID {
                completion(.success(recordID))
            }
        }
    }
}
