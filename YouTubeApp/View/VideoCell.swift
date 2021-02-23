//
//  VideoCell.swift
//  YouTubeApp
//
//  Created by Sai Balaji on 23/02/21.
//

import UIKit

class VideoCell: UITableViewCell {

    @IBOutlet weak var thumbnailimg: UIImageView!
    @IBOutlet weak var videodatelbl: UILabel!
    @IBOutlet weak var videotitlelbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func updateCell(title: String,date: String,imgurl: String)
    {
        self.videodatelbl.text = date
        self.videotitlelbl.text = title
       
        DispatchQueue.global(qos: .userInteractive).async {
            if let imgdata = try? Data(contentsOf: URL(string: imgurl)!)
            {
                DispatchQueue.main.async {
                    self.thumbnailimg.image = UIImage(data: imgdata)
                }
            }
        }
        
    }

    

}
