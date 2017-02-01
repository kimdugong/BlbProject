//
//  BlbCollectionViewCell.swift
//  BlbProject
//
//  Created by Joosung Kim on 01/02/2017.
//  Copyright © 2017 Joosung Kim. All rights reserved.
//

import UIKit

class BlbCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var productImg: UIImageView!
    var product: Product!
    
    func configureCell(_ product: Product)  {
        self.product = product

        productImg.image = UIImage(named: "\(product.productId)")
        
    }
    
}
