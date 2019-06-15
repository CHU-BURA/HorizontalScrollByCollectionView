//
//  ViewController.swift
//  HorizontalScrollByCollectionView
//
//  Created by Sho Nozaki on 2019/06/15.
//  Copyright © 2019 Sho Nozaki. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var portraitButton: UIButton!
    @IBOutlet weak var landscapeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        if UIDevice.current.orientation.rawValue
            != UIInterfaceOrientation.portrait.rawValue {
            
            DispatchQueue.main.async {
                UIDevice.current.setValue(
                    UIInterfaceOrientation.portrait.rawValue,
                    forKey: "orientation")
            }
        }
    }

    func setupUI() {
        portraitButton.setCorner(radius: 25.0)
        landscapeButton.setCorner(radius: 25.0)
        portraitButton.tintColor = UIColor.white
        landscapeButton.tintColor = UIColor.white
        portraitButton.backgroundColor = UIColor.lightGray
        landscapeButton.backgroundColor = UIColor.darkGray
    }
    
    @IBAction func didTapPortraitButton(_ sender: Any) {
        let vc = PortraitScreenViewController.init(
            nibName: "PortraitScreenViewController", bundle: nil)
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func didTapLandscapeButton(_ sender: Any) {
        let vc = LandscapeScreenViewController.init(
            nibName: "LandscapeScreenViewController", bundle: nil)
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

