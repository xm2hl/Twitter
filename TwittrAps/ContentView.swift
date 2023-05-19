//
//  ContentView.swift
//  TwittrAps
//
//  Created by Apple on 16/05/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var isActive = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    
    var body: some View {
        if isActive {
            MainTabView()
        } else {
            ZStack{
                Color("ColorTwittr")
                    .ignoresSafeArea(.all)
                ZStack {
                    
                    Image("Sicons-Basic-Round-Social-Twitter.512")
                        .resizable()
                        .padding(0.0)
                        .frame(width: 100, height: 100)
                }
                .scaleEffect(size)
                .opacity(opacity)
                .onAppear{
                    withAnimation(.easeIn(duration: 1.5)){
                       
                        self.size = 0.9
                        self.opacity = 1
                    }
                    withAnimation(.easeIn(duration: 2)){
                       
                        self.size = 110
                        self.opacity = 1
                    }
                }
                .onAppear{
                    DispatchQueue.main.asyncAfter(deadline: .now() + 5.0){ withAnimation{
                        self.isActive = true
                    }
                        
                    }
                }
                .padding()
            }
        }
     
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
