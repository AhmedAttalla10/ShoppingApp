//
//  categoryCell.swift
//  shoppingApp
//
//  Created by hima attalla on 10/2/19.
//  Copyright © 2019 ahmed attalla. All rights reserved.
//

import UIKit

class categoryCell: UITableViewCell {
    
    @IBOutlet weak var categoryImage: UIImageView!
    @IBOutlet weak var categoryTitle: UILabel!


    
    func updateViews(category: Category) {
        categoryImage.image = UIImage(named: category.imageName)
        categoryTitle.text = category.title
    }

}
