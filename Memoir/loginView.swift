//
//  loginView.swift
//  Memoir
//
//  Created by Antoine Simon on 30/06/2020.
//  Copyright © 2020 Antoine Simon. All rights reserved.
//

import SwiftUI

struct loginView: View {
    @State var email: String = ""
    @State var password: String = ""
    
    var borderStyle: some View {
        RoundedRectangle(cornerRadius: 4).stroke(Color.black, lineWidth: 1).padding(3)
    }
    
    var body: some View {
        ZStack {
            NavigationView {
                VStack {
                    Group {
                        TextField("email_text", text: $email)
                        SecureField("password_text", text: $password)
                    }.padding([.leading, .trailing], 10).padding(8)
                        .overlay(borderStyle)
                    Spacer()
                    Footer
                }.padding(27).padding([.top], 10)
                    .navigationBarTitle("Login")
            }
        }
    }
    
    var Footer: some View {
        NavigationLink(destination: ForgottenPasswordView()) {
            Text("button_text")
                .padding()
                .foregroundColor(.white)
                .background(Color.blue)
                .cornerRadius(4)
        }.padding([.bottom], 8)
    }
}

struct loginView_Previews: PreviewProvider {
    static var previews: some View {
        loginView()
    }
}
