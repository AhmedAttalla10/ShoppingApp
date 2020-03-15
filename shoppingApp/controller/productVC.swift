//
//  productVC.swift
//  shoppingApp
//
//  Created by hima attalla on 10/8/19.
//  Copyright © 2019 ahmed attalla. All rights reserved.
//

import UIKit

class productVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    var products = [Product]()
    
    @IBOutlet weak var productsCollection: UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()

        productsCollection.delegate = self
        productsCollection.dataSource = self
    }
    func initProduct(category: Category) {
        products = DataService.instance.getProduct(productTitle: category.title)
        navigationItem.title = category.title
        
    
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "productCell", for: indexPath) as? productCell {
            let product = products[indexPath.row]
            cell.updateView(product: product)
            return cell
        }
        else {
            return productCell()                         //empty cell or empty cell page
        }
    }
    


}
