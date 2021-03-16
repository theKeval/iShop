//
//  Product.swift
//  iShop
//
//  Created by Keval on 3/16/21.
//

import Foundation

class Product {
    var prodName: String
    var prodDescription: String
    var prodCategory: Categories
    var prodImage: String
    var prodPrice: Double
    var quantity: Int
    
    init(name: String, desc: String, category: Categories, image: String, price: Double, quantity: Int) {
        self.prodName = name
        self.prodDescription = desc
        self.prodCategory = category
        self.prodImage = image
        self.prodPrice = price
        self.quantity = quantity
    }
}

enum Categories {
    case Electronics
    case Footwear
    case Furniture
}
