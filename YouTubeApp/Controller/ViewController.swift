//
//  ViewController.swift
//  YouTubeApp
//
//  Created by Sai Balaji on 22/02/21.
//

import UIKit

class ViewController: UIViewController,ModelDelegate,UITableViewDataSource,UITableViewDelegate {
  
    var vid = ""
    
    @IBOutlet weak var videoTV: UITableView!
    var videoarray = [Video]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        NetworkService.sharedObj.delegate = self
        NetworkService.sharedObj.getVideos()
        videoTV.delegate = self
        videoTV.dataSource = self
    }


    func videosFetched(videos: [Video]) {
        videoarray = videos
        self.videoTV.reloadData()
        
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return videoarray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as? VideoCell
        {
            cell.updateCell(title: videoarray[indexPath.row].title, date: videoarray[indexPath.row].published, imgurl: videoarray[indexPath.row].thumbnail)
            return cell
        }
        
        return UITableViewCell()
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        vid = videoarray[indexPath.row].videoId
        
        performSegue(withIdentifier: "segue", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let destination = segue.destination as? DetailVC
        {
            destination.videoId = vid
        }
        
    }

}

