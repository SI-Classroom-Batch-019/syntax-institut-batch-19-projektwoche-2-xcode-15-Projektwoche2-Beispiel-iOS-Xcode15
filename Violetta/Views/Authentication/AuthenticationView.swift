//
//  AuthenticationView.swift
//  Violetta
//
//  Created by Kevin Waltz on 26.09.24.
//

import SwiftUI

struct AuthenticationView: View {
    
    // MARK: - Properties
    
    @ObservedObject var userViewModel: UserViewModel
    
    
    
    // MARK: - Body
    
    var body: some View {
        ZStack(alignment: .bottom) {
            LinearGradient(colors: [.red, .orange, .pink, .purple, .blue], startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            
            PlaceholderView(icon: "paintpalette.fill", title: "Willkommen bei", subtitle: "Violetta!", foregroundStyle: .white)
            
            CircleButton(foregroundColor: .black, backgroundColor: .white, icon: "arrow.right") {
                userViewModel.loginAnonymously()
            }
            .padding(.bottom, Values.majorPadding)
        }
        .statusBarHidden()
    }
    
}

#Preview {
    AuthenticationView(userViewModel: UserViewModel())
}
