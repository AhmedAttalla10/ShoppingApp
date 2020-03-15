//
//  category.swift
//  shoppingApp
//
//  Created by hima attalla on 10/5/19.
//  Copyright © 2019 ahmed attalla. All rights reserved.
//

import Foundation

struct Category {
    private(set)  public var title: String
    private(set) public var imageName: String
    
    init(title: String, imageName: String){
        
        self.imageName = imageName
        self.title = title
    } }
    
    struct Product {
        private(set) public var productImage: String
        private(set) public var productTitle: String
        private(set) public var productPrice: String
        
        init(productImage: String, productTitle: String, productPrice: String) {
            self.productImage = productImage
           self.productPrice = productPrice
            self.productTitle = productTitle
        }
    }




class DataService {
    static let instance = DataService()
    
    let categories = [Category(title: "SHIRTS", imageName: "shirts"), Category(title: "HODIES", imageName: "hodies"), Category(title: "DIGITAL", imageName: "Digital"), Category(title: "HATS", imageName: "hats")]
    
    //    func getCategory() -> [Category] {
    //        return categories
    //    }
    
    let shirts = [Product(productImage: "shirt01", productTitle: "Dev Shirt Black", productPrice: "50$"), Product(productImage: "shirt02", productTitle: "Dev Shirt gray", productPrice: "50$"), Product(productImage: "shirt03", productTitle: "Dev Shirt Bred", productPrice: "50$"), Product(productImage: "shirt04", productTitle: "Dev Shirt white", productPrice: "50$"), Product(productImage: "shirt05", productTitle: "Dev Shirt Black", productPrice: "50$")]
    
    let hodies = [Product(productImage: "hodie01", productTitle: "Dev hodie red", productPrice: "60$"), Product(productImage: "hodie02", productTitle: "Dev hodie black", productPrice: "60$"), Product(productImage: "hodie03", productTitle: "Dev hodie black", productPrice: "60$"), Product(productImage: "hodie04", productTitle: "Dev hodie gray", productPrice: "60$")]
    
    let hats = [Product(productImage: "hat01", productTitle: "Dev ice Black", productPrice: "20$"), Product(productImage: "hat02", productTitle: "Dev hat black", productPrice: "20$"), Product(productImage: "hat03", productTitle: "Dev hat white", productPrice: "20$"), Product(productImage: "hat04", productTitle: "Dev hat black&white", productPrice: "20$")]
   
    func getProduct(productTitle: String)-> [Product]{
        switch productTitle {
        case "SHIRTS":
            return shirts
        case "HODIES":
            return hodies
        case "HATS":
            return hats
            
        default:
            return []
        }
    }
    
}



