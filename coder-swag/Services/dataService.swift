//
//  dataService.swift
//  coder-swag
//
//  Created by Irza Kamran on 8/28/20.
//  Copyright © 2020 Irza Kamran. All rights reserved.
//

import Foundation

class dataService {
    static let instance = dataService()
    
    private let categories = [
        Category(title: "SHIRTS", imageName: "shirts.png"),
        Category(title: "HOODIES", imageName: "hoodies.png"),
        Category(title: "HATS", imageName: "hats.png"),
        Category(title: "DIGITAL", imageName: "digital.png")
    ]
    
    
    private let hats = [
        Product(title: "Devslops Logo Graphic Beanie", price: "$18", imageName: "hat01.png"),
        Product(title: "Devslopes Logo Hat White", price: "$7", imageName: "hat02.png"),
        Product(title: "Devslopes Logo Hat Black", price: "$7", imageName: "hat03.png"),
        Product(title: "Devslopes Logo Snapback", price: "$7", imageName: "hat04.png")
    ]
    
    
    
    private let hoodies = [
        Product(title: "Devslops Logo Hoodie Gray", price: "$18", imageName: "hoodie01.png"),
         Product(title: "Devslops Logo Hoodie Red", price: "$18", imageName: "hoodie02.png"),
         Product(title: "Devslops Logo Hoodie Gray", price: "$18", imageName: "hoodie03.png"),
     Product(title: "Devslops Logo Hoodie Black", price: "$18", imageName: "hoodie04.png")
    ]
 
    private let shirts = [
        Product(title: "Devslops Logo Shirt Black", price: "$18", imageName: "shirt01.png"),
        Product(title: "Devslops Badge Shirt Gray", price: "$18", imageName: "shirt02.png"),
        Product(title: "Devslops Logo Shirt Red", price: "$18", imageName: "shirt03.png"),
        Product(title: "Hustle Delegate Gray", price: "$18", imageName: "shirt04.png"),
        Product(title: "Kickflips Studios Black", price: "$18", imageName: "shirt05.png")
        ]
    
    private let digitals = [Product]()
    
    func getCategories() -> [Category] {
        return categories
    }
    
    func getProducts(forCategoryTitle title: String) -> [Product] {
        
        switch title {
        case "SHIRTS":
            return getShirts()
        case "HATS":
            return getHats()
        case "HOODIES":
            return getHoodies()
        case "DIGITAL":
            return getDigitalGoods()
        default:
            return getShirts()
        }
    }
    
    func getHats() -> [Product]{
        return hats
    }
    
    func getShirts() -> [Product]{
        return shirts
    }
    
    func getHoodies() -> [Product]{
        return hoodies
    }
    
    func getDigitalGoods() -> [Product]{
        return digitals
    }
}
