//
//  LunarListApp.swift
//  Lunar List
//
//  Created by Parke Gregg April 2023
//  Based on tutorial by Nick Sarno on 3/3/21.
//

import SwiftUI

/*
 MVVM Architecture
 
 Model - manages single data point
 View - manages the UI
 ViewModel - manages data (models) for views
 */

@main
struct LunarListApp: App {
    
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
