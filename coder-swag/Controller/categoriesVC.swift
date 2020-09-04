//
//  ViewController.swift
//  coder-swag
//
//  Created by Irza Kamran on 8/28/20.
//  Copyright © 2020 Irza Kamran. All rights reserved.
//

import UIKit

class categoriesVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var categoryTable: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        categoryTable.dataSource = self
        categoryTable.delegate = self

    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataService.instance.getCategories().count
    }
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "categoryCell") as? categoryCell{
            let category = dataService.instance.getCategories()[indexPath.row]
            cell.updateViews(category: category)
            return cell
        }
        else {
            return categoryCell()
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        let category = dataService.instance.getCategories()[indexPath.row]
        performSegue(withIdentifier: "ProductsVC", sender: category)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let productsVC = segue.destination as? ProductsVC{
            assert(sender as? Category != nil)   //to make sure sender is definitely  of the type category if it is not we will get an error at build time
            productsVC.initProducts(category: sender as! Category)
             
            let barButton = UIBarButtonItem()
            barButton.title = " "
            navigationItem.backBarButtonItem = barButton
        }
    }


}

