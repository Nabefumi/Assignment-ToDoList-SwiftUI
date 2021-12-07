//
//  LoginView.swift
//  ToDoListApp
//
//  Created by Takafumi Watanabe on 2021-12-06.
//

import SwiftUI

struct LoginView: View {
    
    let lightGreyColor = Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0, opacity: 1.0)

    @State var userName: String = ""
    @State var password: String = ""

    
    var body: some View {
        VStack {
            LoginViewImage()
            TextField("Username", text: $userName)
                .padding()
                .background(lightGreyColor)
                .cornerRadius(3.0)
                .padding(.bottom, 30)
            
                .padding()
                .background(lightGreyColor)
                .cornerRadius(3.0)
                .padding(.bottom, 30)
            
            Button(action: {print("Button tapped")}) {
                LoginBotton()
            }

        }
    }
}

struct LoginViewImage: View {
    var body: some View {
        return Image("LoginSigninImage")
            .resizable()
            .aspectRatio(UIImage(named: "LoginSigninImage")!.size, contentMode: .fill)
            .frame(width: 150, height: 200)
            .clipped()
            .padding(.bottom, 75)
    }
}

struct LoginBotton: View {
    var body: some View {
        
        VStack {
            Text("Log in")
                .font(.headline)
                .foregroundColor(.white)
                .padding()
                .frame(width: 220, height: 60)
                .background(Color.green)
                .cornerRadius(15.0)
        }
            .padding()
    }
}
