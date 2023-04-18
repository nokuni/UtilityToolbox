//
//  SaveManager.swift
//  
//
//  Created by Yann Christophe MAERTENS on 06/03/2023.
//

import CoreData

public final class SaveManager {
    
    public init(container: NSPersistentContainer) {
        self.container = container
    }
    
    private enum SaveError: String {
        case unableToFetch = "Unable to fetch the data."
        case unableToSave = "Unable to save."
    }
    
    public var container: NSPersistentContainer

    /// Returns all objects from the 
    public func fetchedObjects<R: NSFetchRequestResult>(entityName: String) throws -> [R] {
        do {
            let request = NSFetchRequest<R>(entityName: entityName)
            return try container.viewContext.fetch(request)
        } catch {
            throw SaveError.unableToFetch.rawValue
        }
    }

    /// Save container changes.
    public func save() throws {
        do {
            try container.viewContext.save()
        } catch {
            throw SaveError.unableToSave.rawValue
        }
    }

    /// Delete an object from the container and save.
    public func delete(_ object: NSManagedObject) {
        container.viewContext.delete(object)
        try? save()
    }
}
