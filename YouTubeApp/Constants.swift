//
//  Constants.swift
//  YouTubeApp
//
//  Created by Sai Balaji on 22/02/21.
//

import Foundation


struct Constants
{
    static var API_KEY = "AIzaSyCKzWCcRTNBt-TCzV7DjU8_jPm9pkk-Yhc"
    static var URL = "https://youtube.googleapis.com/youtube/v3/playlistItems?part=snippet&playlistId=\(Constants.PLAYLIST_ID)&key=\(Constants.API_KEY)"
    static var PLAYLIST_ID = "PLYP1ztSi2fyE5ZYsCxgvMUEn96Ef9pasa"
    static var YOUTUBE_EMBED_URL = "https://www.youtube.com/embed/"
}
