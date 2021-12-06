//
//  ContentView.swift
//  ToDoListApp
//
//  Created by Takafumi Watanabe on 2021-12-06.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

import SwiftUI

struct ContentView: View {
    
    var userName: String = ""
    
    
    var body: some View {
        VStack {
            HomeViewImage()
            HomeViewText()
            TextField(title, text:)

        }
    }
}

//# Mark1
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
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
