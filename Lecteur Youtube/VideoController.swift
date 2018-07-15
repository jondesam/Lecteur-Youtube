//
//  VideoController.swift
//  Lecteur Youtube
//
//  Created by MyMac on 18-07-15.
//  Copyright © 2018 Apex. All rights reserved.
//

import UIKit

class VideoController: UIViewController {
    
    var chanson: Chanson?

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .blue
        if chanson != nil {
            title = chanson!.titre
        }
        
    }


}
