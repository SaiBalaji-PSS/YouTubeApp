//
//  NetworkService.swift
//  YouTubeApp
//
//  Created by Sai Balaji on 22/02/21.
//

import Foundation



protocol ModelDelegate {
    func videosFetched(videos: [Video])
}
class NetworkService{
    
    var delegate: ModelDelegate?
    
    static var sharedObj = NetworkService()
    
    var url = URL(string: Constants.URL)!
    
    let session = URLSession(configuration: .default)
    
    
    func getVideos()
    {
        let task = session.dataTask(with: URLRequest(url: url)) { (data, response, error) in
            
            DispatchQueue.main.async {
                if let d = data
                {
                   let decoder = JSONDecoder()
                    do
                    {
                        let info = try decoder.decode(Response.self, from: d)
                        self.delegate?.videosFetched(videos: info.items!)
                    }
                    
                    catch
                    {
                        print(error)
                    }
                }
                
                
                
            }
            
            
            
        }
        
        task.resume()
    }
    
}
