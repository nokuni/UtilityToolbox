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
    
    private enum SaveError: Error {
        case unableToFetch
        case unableToSave
    }
    
    public var container: NSPersistentContainer
    
    public func fetchedObjects<R: NSFetchRequestResult>(entityName: String) throws -> [R] {
        do {
            let request = NSFetchRequest<R>(entityName: entityName)
            return try container.viewContext.fetch(request)
        } catch {
            throw SaveError.unableToFetch
        }
    }
    
    public func save() throws {
        do {
            try container.viewContext.save()
        } catch {
            throw SaveError.unableToSave
        }
    }
    
    public func delete(_ object: NSManagedObject) {
        container.viewContext.delete(object)
    }
}
