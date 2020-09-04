//
//  Category.swift
//  coder-swag
//
//  Created by Irza Kamran on 8/28/20.
//  Copyright © 2020 Irza Kamran. All rights reserved.
//

import Foundation

struct Category {
    
    private(set) public var title: String
    private(set) public var imageName: String
    
    init(title: String, imageName: String) {
        self.title = title
        self.imageName = imageName
    }
    
}
