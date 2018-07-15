//
//  VideoController.swift
//  Lecteur Youtube
//
//  Created by MyMac on 18-07-15.
//  Copyright © 2018 Apex. All rights reserved.
//

import UIKit
import WebKit

class VideoController: UIViewController {
    
    var chanson: Chanson?

    @IBOutlet weak var webView: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()

      
        if chanson != nil {
            //title = chanson!.titre
            chargerVideo(chanson: chanson!)
        }
        
    }
    
    func chargerVideo (chanson: Chanson) {
        if let url = URL(string: chanson.videoUrl) {
            let requete = URLRequest(url: url)
            webView.load(requete)
        }
    }


}
