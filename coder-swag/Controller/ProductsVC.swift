//
//  ProductsVC.swift
//  coder-swag
//
//  Created by Irza Kamran on 8/29/20.
//  Copyright © 2020 Irza Kamran. All rights reserved.
//

import UIKit

class ProductsVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var productsCollection: UICollectionView!
    private(set) public var products = [Product]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        productsCollection.dataSource = self
        productsCollection.delegate = self

    }
    
    func initProducts(category : Category){
        products = dataService.instance.getProducts(forCategoryTitle: category.title)
        navigationItem.title = category.title
            }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductViewCell", for: indexPath) as? ProductViewCell {
            let product = products[indexPath.row]
            cell.updateViews(product: product)
            return cell
        }
        return ProductViewCell()
    }


}
