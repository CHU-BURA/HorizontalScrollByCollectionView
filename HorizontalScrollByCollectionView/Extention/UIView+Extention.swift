//
//  UIView+Extention.swift
//  HorizontalScrollByCollectionView
//
//  Created by Sho Nozaki on 2019/06/15.
//  Copyright © 2019 Sho Nozaki. All rights reserved.
//

import UIKit

extension UIView {
    
    func setCorner(radius: CGFloat) {
        self.layer.cornerRadius = radius
        self.clipsToBounds = true
    }
}
