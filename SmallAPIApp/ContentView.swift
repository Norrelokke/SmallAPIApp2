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
        VStack {
            Text(apifile.activityText)
        }
        .padding()
        .onAppear() {
            Task {
                await apifile.loadapi()
            }
        }
    
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
