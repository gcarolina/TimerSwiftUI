//
//  TimerSwiftUIHWApp.swift
//  TimerSwiftUIHW
//
//  Created by Carolina on 21.02.23.
//

import SwiftUI

@main
struct TimerSwiftUIApp: App {
    
    @StateObject private var user = UserManager()
    
    var body: some Scene {
        
        WindowGroup {
            StarterView()
                .environmentObject(user)
        }
    }
}
