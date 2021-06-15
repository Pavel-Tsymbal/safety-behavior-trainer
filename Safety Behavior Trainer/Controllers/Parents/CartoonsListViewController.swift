//
//  CartoonsListViewController.swift
//  Safety Behavior Trainer
//
//  Created by Pavel Tsymbal on 13.06.21.
//

import UIKit

class CartoonsListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var cartoonListBrain = CartoonsListBrain()
    
    // cell reuse id (cells that scroll out of view can be reused)
    let cellReuseIdentifier = "cell"
    
    @IBOutlet var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Register the table view cell class and its reuse id
        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellReuseIdentifier)
        
        // remove the extra empty cell divider lines
        self.tableView.tableFooterView = UIView()
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    @IBAction func cancelButtonPressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    // number of rows in table view
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.cartoonListBrain.items[section].count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return self.cartoonListBrain.headers.count;
    }
    
    // create a cell for each table view row
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // create a new cell if needed or reuse an old one
        let cell:UITableViewCell = (self.tableView.dequeueReusableCell(withIdentifier: cellReuseIdentifier) as UITableViewCell?)!
        
        // set the text from the data model
        cell.textLabel?.text = self.cartoonListBrain.items[indexPath.section][indexPath.row].title
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section < self.cartoonListBrain.headers.count {
            return self.cartoonListBrain.headers[section]
        }
        
        return nil
    }
    
    // method to run when table view cell is tapped
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        cartoonListBrain.setSelectedCartoonsList(list: cartoonListBrain.items[indexPath.section][indexPath.row])
        self.performSegue(withIdentifier: "cartoonsSubListSegue", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "cartoonsSubListSegue" {
            let destinationVC = segue.destination as! CartoonsSubListViewController
            
            destinationVC.cartoonsList = cartoonListBrain.selectedCartoonsList
        }
    }
    
}
