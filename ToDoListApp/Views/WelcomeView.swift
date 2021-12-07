//
//  WelcomeView.swift
//  ToDoListApp
//
//  Created by Takafumi Watanabe on 2021-12-06.
//

import SwiftUI

struct WelcomeView: View {
    
    var body: some View {
        VStack {
            HomeViewImage()
            HomeViewText()
            HomeViewExplanationText()

            Button(action: {self.LoginView.toggle() }) {
            }
            .sheet(isPresented: self.$show) {
                HomeLoginBotton()

            }

            
            Button(action: {self.LoginView.toggle()}) {
                HomeSignupBotton()
            }

        }
    }
}

struct HomeViewImage: View {
    var body: some View {
        return Image("HomeViewImage")
            .resizable()
            .aspectRatio(UIImage(named: "HomeViewImage")!.size, contentMode: .fill)
            .frame(width: 250, height: 300)
            .clipped()
            .padding(.bottom, 75)
    }
}

struct HomeViewText: View {
    var body: some View {
        return Text("Saving your time")
            .font(.largeTitle)
            .fontWeight(.semibold)
            .padding(.bottom, 20)
    }
}

struct HomeViewExplanationText: View {
    var body: some View {
        return Text("For the best trip, simply specify your plan.")
    }
}

struct HomeLoginBotton: View {
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

struct HomeSignupBotton: View {
    var body: some View {
        
        VStack {
            Text("Sign Up")
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
