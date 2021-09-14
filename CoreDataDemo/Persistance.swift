//
//  Persistance.swift
//  CoreDataDemo
//
//  Created by Frederick Javalera on 9/14/21.
//

import CoreData

struct PersistenceController {
  
  // MARK: Properties
  static let shared = PersistenceController()
  let container: NSPersistentContainer
  
  // MARK: Initializer
  init() {
    container = NSPersistentContainer(name: "TodoList")
    container.loadPersistentStores { storeDescription, error in
      if let error = error as NSError? {
        fatalError("Unresolved error: \(error)")
      }
    }
  }
  
  
}
