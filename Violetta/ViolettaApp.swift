//
//  ViolettaApp.swift
//  Violetta
//
//  Created by Lukasz Zalewski on 30.09.24.
//

import SwiftUI
import Firebase

@main
struct ViolettaApp: App {
    
    // MARK: - Properties
    
    @StateObject private var userViewModel = UserViewModel()
    
    
    
    // MARK: - Init
    
    init() {
        FirebaseConfiguration.shared.setLoggerLevel(.min)
        FirebaseApp.configure()
    }
    
    
    
    // MARK: - Body
    
    var body: some Scene {
        WindowGroup {
            if userViewModel.userIsLoggedIn {
                NavigatorView()
            } else {
                AuthenticationView(userViewModel: userViewModel)
            }
        }
    }
    
}
