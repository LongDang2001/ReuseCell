//
//  ViewController.swift
//  ReuseCell
//
//  Created by admin on 2/10/20.
//  Copyright © 2020 Long. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableview: UITableView!
    var data = Array(1...100)
//    var numberOfCell: Int = 0 {
//        didSet {
//            title = "so cell: \(numberOfCell)"
//        }
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableview.dataSource = self
        tableview.delegate = self
       
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "IDCell") as? SubtitleCell
//        if cell == nil {
//            cell = SubtitleCell(style: UITableViewCell.CellStyle.subtitle, reuseIdentifier: "IDCell")
//            numberOfCell += 1
//        }
        
//        cell?.textLabel?.text = String(data[indexPath.row])
        cell?.labelCell.text = String(data[indexPath.row])

        if ![10,20,30].contains(data[indexPath.row]) {
            cell?.labelCell.text = String(data[indexPath.row])
        } else {
            cell?.backgroundColor = UIColor.red
        }
        return cell!
    }
    
    


}

