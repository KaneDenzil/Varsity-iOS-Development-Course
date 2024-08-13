//
//  TodoListApp.swift
//  TodoList
//
//  Created by Kane Denzil Quadras Bernard on 2024-07-23.
//

import SwiftUI

@main
struct TodoListApp: App {
    let persistentContainer = CoreDataManager.shared.persistentContainer
    var body: some Scene {
        WindowGroup {
            ContentView().environment(\.managedObjectContext, persistentContainer.viewContext)
        }
    }
}
