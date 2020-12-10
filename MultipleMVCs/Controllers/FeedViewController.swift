//
//  FeedViewController.swift
//  MultipleMVCs
//
//  Created by Tung Vu Duc on 09/12/2020.
//

import UIKit

class ImageCellController {
    
    private let item: FeedItem
    private var cell: FeedImageCell?
    
    init(item: FeedItem) {
        self.item = item
    }
    
    func view(_ tableView: UITableView) -> UITableViewCell {
        let cell =  tableView.dequeueReusableCell(withIdentifier: "FeedImageCell") as! FeedImageCell
        cell.feedImageView.image = UIImage(named: item.image)
        cell.usernameLabel.text = item.username
        cell.dateLabel.text = item.date
        cell.descriptionLabel.text = item.description
        return cell
    }
    
}

class FeedViewController: UITableViewController {
    
    var dataSource: [ImageCellController] = [] {
        didSet {
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSource.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellController = dataSource[indexPath.row]
        return cellController.view(tableView)
    }
    
}
