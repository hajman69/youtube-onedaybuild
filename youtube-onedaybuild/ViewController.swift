//
//  ViewController.swift
//  youtube-onedaybuild
//
//  Created by Ryan Hajji on 18/06/2020.
//  Copyright © 2020 Ryan Hajji. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var model = Model()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        model.getVideos()
    }


}

