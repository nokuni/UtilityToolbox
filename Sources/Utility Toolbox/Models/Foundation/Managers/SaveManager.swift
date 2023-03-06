//
//  File.swift
//  
//
//  Created by Yann Christophe MAERTENS on 06/03/2023.
//

import CoreData

class SaveManager {

    init(container: NSPersistentContainer) {
        self.container = container
    }

    enum SaveError: Error {
        case unableToFetch
        case unableToSave
    }

    var container: NSPersistentContainer

    func fetchedObjects<R: NSFetchRequestResult>(entityName: String) throws -> [R] {
        do {
            let request = NSFetchRequest<R>(entityName: entityName)
            return try container.viewContext.fetch(request)
        } catch {
            throw SaveError.unableToFetch
        }
    }

    func save() throws {
        do {
            try container.viewContext.save()
        } catch {
            throw SaveError.unableToSave
        }
    }

    func delete(_ object: NSManagedObject) {
        container.viewContext.delete(object)
    }
}
