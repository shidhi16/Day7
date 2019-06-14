//
//  main.swift
//  Day7
//
//  Created by Vijender Singh on 2019-06-14.
//  Copyright © 2019 Shivani Dhiman. All rights reserved.
//

import Foundation

func readJsonFile(jsonFileName : String)
{
    let url = Bundle.main.url(forResource: jsonFileName, withExtension: "json")
    
    guard let jsonData = url else {
        return
    }
        guard let data = try? Data(contentsOf: jsonData)
            else
        {
            return
        }
        guard let json = try? JSONSerialization.jsonObject(with: data, options: [])
            else{
                return
    }
    print(json)
    
    if let jsonDictionary = json as? [String: Any]{
        if let email = jsonDictionary["email"] as? String
        {
            print(email)
        }
        var user = user()
        if let username = jsonDictionary["username"] as? String
            {
                print(username)
            }
            
        if let addressDict = jsonDictionary["address"] as? Dictionary<String, Any>)
                {
                    if let city = jsonDictionary["City"] as? String
                    {
                        print(city)
                        Address.city = city
                    }
                    
                    
                    var geo : Geo
                    
                    //read geo dictionary here
                }
        }
}
readJsonFile(jsonFileName: "user")

func readTextFile(fileName: String)
{
    let url = Bundle.main.url(forResource: "Sample", withExtension: "txt")
    {
        do{
            let text = try String()
        }
    }
    
}
