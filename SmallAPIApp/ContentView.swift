//
//  ContentView.swift
//  SmallAPIApp
//
//  Created by Mikaela Nörrelökke on 2023-11-30.
//

import SwiftUI

struct ContentView: View {
    
    @State var activity = ""
    
    var body: some View {
        VStack {
            Text(activity)
        }
        .padding()
        .onAppear() {
            loadapi()
        }
    
    }
    func loadapi() {
        var url = URL(string:"https:///www.boredapi.com/api/activity/")!
        do {
            var GetActivity =  try String(contentsOf:url)
            print(GetActivity)
            
            activity = GetActivity
        } catch {
           print("Content could not be loaded")
        }
    }
}

#Preview {
    ContentView()
}
