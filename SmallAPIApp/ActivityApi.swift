//
//  ActivityApi.swift
//  SmallAPIApp
//
//  Created by Mikaela Nörrelökke on 2023-12-03.
//

import Foundation

struct Activity : Codable {
    var activity : String
    var type : String
    var key : String
}

class Activityapi: ObservableObject {
    
    @Published var ActivityText = ""

    func loadapi() async {
        var url = URL(string:"https:///www.boredapi.com/api/activity/")!
        do {
            var (apidata, apiresp) = try await URLSession.shared.data(from:url)
            print(apidata.count)
            
            let decoder = JSONDecoder()
            let theactivity = try decoder.decode(Activity.self, from: apidata)
            
            DispatchQueue.main.async {
                        self.ActivityText = theactivity.activity  // Assuming you want to display the activity string
                    }
                    print(theactivity.activity) // Adjusted to print the activity string
                } catch {
                    print("Could not load content: \(error)")
                }
            }
        }
