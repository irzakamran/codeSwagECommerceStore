//
//  categoryCell.swift
//  coder-swag
//
//  Created by Irza Kamran on 8/28/20.
//  Copyright © 2020 Irza Kamran. All rights reserved.
//

import UIKit

class categoryCell: UITableViewCell {
    
    @IBOutlet weak var categoryImage: UIImageView!
    @IBOutlet weak var categoryTitle: UILabel!
    
    func updateViews(category: Category){
        categoryImage.image = UIImage(named: category.imageName)
        categoryTitle.text = category.title
    }



    

}
