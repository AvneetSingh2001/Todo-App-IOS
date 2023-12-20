//
//  Todo_App_IOSApp.swift
//  Todo App IOS
//
//  Created by Avi manak on 11/12/23.
//

import SwiftUI

@main
struct Todo_App_IOSApp: App {
    
    @StateObject var listViewModel: ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ListView()
            }
            .navigationViewStyle(StackNavigationViewStyle())
            .environmentObject(listViewModel)
        }
    }
}
