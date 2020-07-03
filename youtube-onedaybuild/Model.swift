//
//  Model.swift
//  youtube-onedaybuild
//
//  Created by Ryan Hajji on 19/06/2020.
//  Copyright © 2020 Ryan Hajji. All rights reserved.
//

import Foundation


class Model {
    
    func getVideos() {
        
        // Create a URL object
        let url = URL(string: Constants.API_URL)
        
        guard url != nil else{
            return
        }
        
        // Get a URLSession object
        let session = URLSession.shared
        
        // Get a data task from the URLSession object
        let dataTask = session.dataTask(with: url!) { (data, response, error) in
            
            // Check if there were any errors
            if error != nil || data == nil {
                return
            }
            
            do {
                
                // Parsing the data into video objects
                let decoder = JSONDecoder()
                decoder.dataDecodingStrategy = .base64
                
                let response = try decoder.decode(Response.self, from: data!)
                
                dump(response)
            }
            catch {
                
            }
            
        }
        
        // kick off the task
        dataTask.resume()
        
    }
}
