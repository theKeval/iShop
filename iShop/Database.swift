//
//  Database.swift
//  iShop
//
//  Created by Keval on 3/16/21.
//

import Foundation

class MyData {
    
    static var imageList: [String] = ["surface", "macbook", "iphone_12_pro_max", "pixel_5", "samsung_screen", "nike_airmax", "adidas_vapormax", "sofa", "beanBag", "table"]
    
    static var productList = [Product]()
    
    static func fillData() {
        let prodList = [
            Product(name: "Microsoft Surface", desc: "Stay connected & work your way with Surface. Shop the latest innovations: Surface Laptop Go, Surface Book 3, Surface Go 2, Surface Laptop 3, Surface Pro 7, ...", category: Categories.Electronics, image: "surface", price: 1500, quantity: 27),
            
            Product(name: "Apple Macbook", desc: "", category: Categories.Electronics, image: "macbook", price: 2000, quantity: 120),
            
            Product(name: "iPhone 12 Pro Max", desc: "", category: Categories.Electronics, image: "iphone_12_pro_max", price: 899, quantity: 23),
            
            Product(name: "Pixel 5", desc: "", category: Categories.Electronics, image: "pixel_5", price: 799, quantity: 34),
            
            Product(name: "Samsung Screen", desc: "", category: Categories.Electronics, image: "samsung_screen", price: 299, quantity: 23),
            
            Product(name: "Nike AirMax", desc: "", category: Categories.Footwear, image: "nike_airmax", price: 99, quantity: 98),
            
            Product(name: "Adidas VaporMax", desc: "", category: Categories.Footwear, image: "adidas_vapormax", price: 79, quantity: 87),
            
            Product(name: "Sofa", desc: "", category: Categories.Furniture, image: "sofa", price: 69, quantity: 90),
            
            Product(name: "Bean Bag", desc: "", category: Categories.Furniture, image: "beanBag", price: 45, quantity: 57),
            
            Product(name: "Study Table", desc: "", category: Categories.Furniture, image: "table", price: 38, quantity: 29)
            
        ]
        
        productList.append(contentsOf: prodList)
        
    }
    
}
