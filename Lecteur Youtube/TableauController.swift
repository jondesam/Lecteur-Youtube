//
//  TableauControllerViewController.swift
//  Lecteur Youtube
//
//  Created by MyMac on 18-07-12.
//  Copyright © 2018 Apex. All rights reserved.
//

import UIKit

class TableauController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet var tableView: UITableView!
    
    var chansons = [Chanson]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        ajouterChanson()
        

        // Do any additional setup after loading the view.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return chansons.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      return  UITableViewCell()
    }
   
    func ajouterChanson()  {
        chansons = [Chanson]()
        let bien = Chanson(artiste: "Orelsan", titre: "Tout va bien", code: "dq6G2YWoRqA")
        chansons.append(bien)
        let basique = Chanson(artiste: "Orelsan", titre: "Basique", code: "2bjk26RwjyU")
        chansons.append(basique)
        let ronde = Chanson(artiste: "Orelsan", titre: "ronde", code: "oGdhZyS2ozo")
        tableView.reloadData()
    
    }


}
