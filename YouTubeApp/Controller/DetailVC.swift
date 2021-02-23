//
//  DetailVC.swift
//  YouTubeApp
//
//  Created by Sai Balaji on 23/02/21.
//

import UIKit
import WebKit

class DetailVC: UIViewController {

    var video: Video?
    
    @IBOutlet weak var titlelbl: UILabel!
    
    @IBOutlet weak var textview: UITextView!
    @IBOutlet weak var webView: WKWebView!
   // @IBOutlet weak var datelbl: UILabel!
    
    
    
    override func viewWillAppear(_ animated: Bool) {
        guard let v = video else {
            return
        }
        
      
        
        titlelbl.text = v.title
        textview.text = v.description
        //datelbl.text = v.published
        
        let VURL = Constants.YOUTUBE_EMBED_URL + v.videoId
        
        webView.load(URLRequest(url: URL(string: VURL)!))
        
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
       title = "Player"
       
    }
    

   
   

}
