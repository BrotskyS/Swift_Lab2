//
//  ContentView.swift
//  Swift_Lab2
//
//  Created by user on 14.10.2021.
//

import SwiftUI

struct ContentView: View {
    
    @State private var username: String = ""
    @State private var IsPressed: Bool = false
    
    
    func onShowHelloUserName() {
        if(username.count >= 2){
            IsPressed = true
        }
    }
 
    var body: some View {
        VStack(alignment: .center){
            TextField("Input your name", text: $username, onEditingChanged: { edit in
                onShowHelloUserName()
              })
            
                .onChange(of: username) { newValue in
                    IsPressed = false
                            }
                
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                .border(Color.black, width: 1)
            if(IsPressed){
                Text("👋 Hello " + username + "!")
                    .padding(.top)
                    
            }
            Spacer()
            
            Button {
                onShowHelloUserName()
            } label: {
                Text("Say Hello!")
                    .fontWeight(.bold)
                    .padding()
                    .foregroundColor(Color.white)
                    .frame(maxWidth: .infinity)
                
            }
            .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.blue/*@END_MENU_TOKEN@*/)
            .cornerRadius(/*@START_MENU_TOKEN@*/4.0/*@END_MENU_TOKEN@*/)
        }
      
        .padding(.top)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
