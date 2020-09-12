//
//  ElevationRequest.swift
//  CM Project (Draft 1)
//
//  Created by Jia Yu Lee on 8/9/20.
//  Copyright © 2020 Jia Yu. All rights reserved.
//

import Foundation

struct ElevationRequest {
    let resourceURL: URL

    init(geoCoding: String) {
        
        let resourceString = "https://api.airmap.com/elevation/v1/ele?points=\(geoCoding)" 
        guard let resourceURL = URL(string: resourceString) else {fatalError()}
        
        self.resourceURL = resourceURL
    }
    
    public func getElevation (completionHandler: @escaping(ElevationInfo) -> Void) {
        
        let dataTask = URLSession.shared.dataTask(with: resourceURL) {data, response, error in
            
            guard let jsonData = data else { return }
                
            do {
                let elevationResponse = try JSONDecoder().decode(ElevationInfo.self, from: jsonData)
                
                let elevationdatas = elevationResponse.data
                let elevationstatus = elevationResponse.status
                
                let elevationArray = elevationdatas.map { String($0) }
                let elevationdata = elevationArray.joined(separator: "-")
                
                completionHandler(elevationResponse)
                
                    
            }
            catch {
                let error = error
                print(error) // or print(error.localizedDescription)
            }
        }
        dataTask.resume()
        
        
    }
    
    
}

