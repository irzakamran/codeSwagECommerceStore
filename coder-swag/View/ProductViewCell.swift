//
//  ProductViewCell.swift
//  coder-swag
//
//  Created by Irza Kamran on 8/29/20.
//  Copyright © 2020 Irza Kamran. All rights reserved.
//

import UIKit

class ProductViewCell: UICollectionViewCell {
    
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productTitle: UILabel!
    @IBOutlet weak var productPrice: UILabel!
    
    func updateViews(product: Product){
        productImage.image = UIImage(named: product.imageName)
        productTitle.text = product.title
        productPrice.text = product.price
    }
    
    

    
}
