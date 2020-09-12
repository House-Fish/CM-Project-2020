//
//  DisasterRequest.swift
//  CM Project (Draft 1)
//
//  Created by Jia Yu Lee on 12/9/20.
//  Copyright © 2020 Jia Yu. All rights reserved.
//

import Foundation

    func fetchPostData (completionHandler: @escaping (Result<[DisasterDetail], DisasterError>) -> Void) {
        
        let url = URL(string: "https://api.reliefweb.int/v1/disasters?appname=rwint-user-0&profile=list&preset=latest&slim=1")!
        
        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
            
            guard let jsonData = data else {
                
                completionHandler(.failure(.dataUnavailable))
                return
            }
            
            do {
                let postsData = try JSONDecoder().decode(DisasterData.self, from: jsonData)
                let postedData = postsData.data

                completionHandler(.success(postedData))
                
                return
            }
            catch {
                let error = error
                print(error)
                
                completionHandler(.failure(.cannotProccessData))
                
            }
        }.resume()
}
