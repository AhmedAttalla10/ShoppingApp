//
//  productCell.swift
//  shoppingApp
//
//  Created by hima attalla on 10/6/19.
//  Copyright © 2019 ahmed attalla. All rights reserved.
//

import UIKit

class productCell: UICollectionViewCell {
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productTitle: UILabel!
    @IBOutlet weak var productPrice: UILabel!
    
    func updateView(product: Product) {
        productImage.image = UIImage(named: product.productImage)
        productTitle.text = product.productTitle
        productPrice.text = product.productPrice
    }
}
