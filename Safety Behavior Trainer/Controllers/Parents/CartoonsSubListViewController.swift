//
//  CatoonsSubListViewController.swift
//  Safety Behavior Trainer
//
//  Created by Pavel Tsymbal on 13.06.21.
//

import UIKit

class CartoonsSubListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var cartoonsList: CartoonsListEntity?
        
    // cell reuse id (cells that scroll out of view can be reused)
    let cellReuseIdentifier = "cell"
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Register the table view cell class and its reuse id
        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellReuseIdentifier)
        
        // remove the extra empty cell divider lines
        self.tableView.tableFooterView = UIView()
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    @IBAction func cancelButtonPrressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    // number of rows in table view
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cartoonsList?.items.count ?? 0;
    }
    
    // create a cell for each table view row
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // create a new cell if needed or reuse an old one
        let cell:UITableViewCell = (self.tableView.dequeueReusableCell(withIdentifier: cellReuseIdentifier) as UITableViewCell?)!
        
        // set the text from the data model
        cell.textLabel?.text = cartoonsList?.items[indexPath.row]
        
        return cell
    }
}
