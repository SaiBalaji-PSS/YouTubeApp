//
//  NetworkService.swift
//  YouTubeApp
//
//  Created by Sai Balaji on 22/02/21.
//

import Foundation


class NetworkService{
    
    static var sharedObj = NetworkService()
    
    var url = URL(string: Constants.URL)!
    
    let session = URLSession(configuration: .default)
    
    
    func getVideos()
    {
        let task = session.dataTask(with: URLRequest(url: url)) { (data, response, error) in
            
            DispatchQueue.main.async {
                if let d = data
                {
                  print(d)
                    
                }
                
                
                
            }
            
            
            
        }
        
        task.resume()
    }
    
}
