//
//  CoreDataDemoApp.swift
//  CoreDataDemo
//
//  Created by Frederick Javalera on 9/14/21.
//

import SwiftUI

@main
struct CoreDataDemoApp: App {
  
  // MARK: Properties
  let persistenceContainer = PersistenceController.shared
  
  // MARK: Body
  var body: some Scene {
    WindowGroup {
      ContentView()
        .environment(\.managedObjectContext, persistenceContainer.container.viewContext)
    }
  }
}
