//
//  MatchingAppApp.swift
//  MatchingApp
//
//  Created by Rio Nagasaki on 2023/05/01.
//

import SwiftUI
import Supabase
import PartialSheet

@main
struct MatchingAppApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    var body: some Scene {
        WindowGroup {
            ContentView()
                .attachPartialSheetToRoot()
                .environmentObject(AppState())
                .environmentObject(UserObservableModel())
                .environmentObject(PairObservableModel(pairModel: .init()))
        }
    }
}
