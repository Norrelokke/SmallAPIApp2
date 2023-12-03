//
//  ContentView.swift
//  SmallAPIApp
//
//  Created by Mikaela Nörrelökke on 2023-11-30.
//

import SwiftUI

struct ContentView: View {
    
  @StateObject var apifile = Activityapi()
  
    
    var body: some View {
        VStack{ Text("Hey app, what should I do next?")}
        VStack {
           
            Text(apifile.ActivityText)
        }
        .padding()
        .foregroundColor(.mint)
        .font(.title)
        .bold()
        
        .onAppear() {
            Task {
                await apifile.loadapi()
            }
        }
        Button("No thanks, give me another activity") {
                      Task {
                          await apifile.loadapi()
                      }
            
                  }
                  .padding()
                  .background(Color.mint)
                  .foregroundColor(.white)
                  .cornerRadius(10)
                  .textCase(/*@START_MENU_TOKEN@*/.uppercase/*@END_MENU_TOKEN@*/)
              }
    
    }

 


/*
 
 do {
     var GetActivity =  try String(contentsOf:url)
     print(GetActivity)
     
     activity = GetActivity
 } catch {
    print("Content could not be loaded")
 }
 */

#Preview {
    ContentView()
}
