//
//  BaseLandscapeViewController.swift
//  HorizontalScrollByCollectionView
//
//  Created by Sho Nozaki on 2019/06/15.
//  Copyright © 2019 Sho Nozaki. All rights reserved.
//

import UIKit

class BaseLandscapeViewController: UIViewController {

    override var shouldAutorotate: Bool {
        get {
            return true
        }
    }
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        get {
            return .landscape
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

}
