//
//  ViewController.swift
//  shoppingApp
//
//  Created by hima attalla on 10/2/19.
//  Copyright © 2019 ahmed attalla. All rights reserved.
//

import UIKit

class categoriesVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var categoryTable: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        categoryTable.delegate = self
        categoryTable.dataSource = self
        
    }
   
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.instance.categories.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "cellCategory") as? categoryCell {
            let category = DataService.instance.categories[indexPath.row]
            cell.updateViews(category: category)
            return cell
        }
        else {
            return categoryCell()
        }
        
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let category = DataService.instance.categories[indexPath.row]
        performSegue(withIdentifier: "goProducts", sender: category)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let productVc = segue.destination as? productVC {
            let barBtn = UIBarButtonItem()
            barBtn.title = ""
        navigationItem.backBarButtonItem = barBtn
        assert(sender as? Category != nil)
            productVc.initProduct(category: sender as! Category )
        }
    }
}

