//
//  FeedViewController.swift
//  MultipleMVCs
//
//  Created by Tung Vu Duc on 09/12/2020.
//

import UIKit
class FeedViewController: UITableViewController {
    
    var dataSource: [FeedItem] = [] {
        didSet {
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        APIService.shared.loadFeed {[weak self] feed in
            self?.dataSource = feed
        }
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSource.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell =  tableView.dequeueReusableCell(withIdentifier: "FeedImageCell") as! FeedImageCell
        let item = dataSource[indexPath.row]
        cell.feedImageView.image = UIImage(named: item.image)
        cell.usernameLabel.text = item.username
        cell.dateLabel.text = item.date
        cell.descriptionLabel.text = item.description
        return cell

    }
    
}
