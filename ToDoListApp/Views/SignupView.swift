//
//  SignupView.swift
//  ToDoListApp
//
//  Created by Takafumi Watanabe on 2021-12-06.
//

import SwiftUI

struct SignupViewView: View {
    
    @State var username: String = ""
    @State var email: String = ""
    @State var password: String = ""
    
    var body: some View {
        NavigationView {
            VStack {
                Image("LoginSigninImage")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150, height: 200)
                
                VStack {
                    TextField("Email Address", text: $username)
                        .background(Color.white)
                        .padding()
                    TextField("Email Address", text: $email)
                        .background(Color.white)
                        .padding()
                    SecureField("Password", text: $password)
                        .background(Color.white)
                        .padding()
                    Button(action: {
                    }, label: {
                        Text("Sign Up")
                            .foregroundColor(Color.white)
                            .frame(width: 200, height: 50)
                            .cornerRadius(8)
                            .background(Color.blue)
                    })
                }
                .padding()
            }
            
            .navigationTitle("Sign up")
        }
    }
}

struct SignupViewView_Previews: PreviewProvider {
    static var previews: some View {
        SignupViewView()
    }
}
