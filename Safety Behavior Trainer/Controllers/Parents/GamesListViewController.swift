//
//  GamesListViewController.swift
//  Safety Behavior Trainer
//
//  Created by Pavel Tsymbal on 18.06.21.
//

import UIKit
import QuickLook

class GamesListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, QLPreviewControllerDataSource {

    var gamesListBrain = GamesListBrain()
    
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
    
    @IBAction func cancelButtonPressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    // number of rows in table view
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return gamesListBrain.items.count;
    }
    
    // create a cell for each table view row
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // create a new cell if needed or reuse an old one
        let cell:UITableViewCell = (self.tableView.dequeueReusableCell(withIdentifier: cellReuseIdentifier) as UITableViewCell?)!
        
        // set the text from the data model
        cell.textLabel?.text = gamesListBrain.items[indexPath.row].title
        
        return cell
    }
    
    // method to run when table view cell is tapped
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        gamesListBrain.currentEntityNumber = indexPath.row
        preparePreviewController()
    }
    
    func numberOfPreviewItems(in controller: QLPreviewController) -> Int {
        return 1
    }
    
    func previewController(_ controller: QLPreviewController, previewItemAt index: Int) -> QLPreviewItem {
        
        let fileName = gamesListBrain.getCurrentEntity().fileName
        
        guard let url = Bundle.main.url(forResource: fileName, withExtension: "docx") else {
            fatalError("Could not load \(fileName).docx")
        }
        
        return url as QLPreviewItem
    }
    
    func preparePreviewController() -> Void {
        let previewController = QLPreviewController()
        previewController.dataSource = self
        present(previewController, animated: true)
    }
    
}
