//
//  NetworkManager.swift
//  H4X0R News
//
//  Created by Jagdev Singh Jhajj on 2020-05-24.
//  Copyright © 2020 Jagdev Singh Jhajj. All rights reserved.
//

import Foundation

class NetworkManager {
    
    func fetchDat() {
        if let url = URL(string: "http://hn.algolia.com/api/v1/search?tags=front_page"){
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { (data, response, error) in
                if error == nil{
                    let decoder = JSONDecoder()
                    if let safeData = data{
                        do {
                    let results = try decoder.decode(Results.self, from: safeData)
                        } catch {
                            print(error)
                        }
                }
            }
        }
    }
}
}
