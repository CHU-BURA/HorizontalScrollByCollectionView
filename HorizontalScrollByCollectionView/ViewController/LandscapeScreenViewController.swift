//
//  LandscapeScreenViewController.swift
//  HorizontalScrollByCollectionView
//
//  Created by Sho Nozaki on 2019/06/15.
//  Copyright © 2019 Sho Nozaki. All rights reserved.
//

import UIKit

class LandscapeScreenViewController: BaseLandscapeViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setDeviceOrientation()
        initCollectionView()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        collectionView.flashScrollIndicators()
    }
    
    private func setDeviceOrientation() {
        UIDevice.current.setValue(
            UIInterfaceOrientation.landscapeRight.rawValue,
            forKey: "orientation")
    }
    
    private func initCollectionView() {
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(UICollectionViewCell.self,
                                forCellWithReuseIdentifier: "CollectionViewCell")
        
        let layout = UICollectionViewFlowLayout()
        // cellサイズの指定
        let size = collectionView.frame.height
        layout.itemSize = CGSize(width: size, height: size)
        // スクロール方向の設定
        layout.scrollDirection = .horizontal
        collectionView.collectionViewLayout = layout
    }
    
    @IBAction func didTapBackButton(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
}

// MARK: - UICollectionViewDataSource
extension LandscapeScreenViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(
            withReuseIdentifier: "CollectionViewCell",
            for: indexPath) as UICollectionViewCell
        cell.backgroundColor = UIColor.yellow
        
        return cell
    }
}

// MARK: - UICollectionViewDelegate
extension LandscapeScreenViewController: UICollectionViewDelegate {
}
