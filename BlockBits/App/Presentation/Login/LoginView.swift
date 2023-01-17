//
//  LoginView.swift
//  BlockBits
//
//  Created by Higashikata Maverick on 15/1/23.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.green)
            loginForm
        }
        .ignoresSafeArea()
    }
    
    @ViewBuilder var loginForm: some View {
        GeometryReader { proxy in
            ZStack {
                Rectangle()
                    .frame(width: proxy.size.width * 0.85, height: proxy.size.height * 0.40)
                    .foregroundColor(.white)
                    .cornerRadius(25)
            }
            .frame(width: proxy.size.width, height: proxy.size.height)
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
