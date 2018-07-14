//
//  Chanson.swift
//  Lecteur Youtube
//
//  Created by MyMac on 18-07-14.
//  Copyright © 2018 Apex. All rights reserved.
//

import Foundation

class Chanson  {
    private var _artiste: String
    private var _titre: String
    private var _code: String
    private var _baseUrlVideo = "https:www.youtube.com/embed/"
    private var _baseUrlminiature = "http://i.ytimg.com/vi/"
    private var _finUrlMiniature = "/maxresdefault.jpg"
    
    var artiste: String{
       return _artiste
    }
    
    var titre: String {
        return _titre
    }
    
    var videoUrl: String {
        return _baseUrlVideo + _code
    }
    
    var miniatureUrl: String {
        return _baseUrlminiature + _code + _finUrlMiniature
    }
    
    init(artiste: String, titre:String, code: String) {
        self._artiste = artiste
        self._titre = titre
        self._code = code
    }
    
}
