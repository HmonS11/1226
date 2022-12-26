//
//  ViewController.swift
//  Qatar2022_Structure
//
//  Created by wizard on 2022/10/14.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.dataSource = self
        tableView.delegate = self
    }
}

extension ViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return nations.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let keys = nations.keys.sorted() //["A", "B"....."H"]
        let key = keys[section]
        if let group = nations[key] {
            return group.count
        } else {
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let keys = nations.keys.sorted() //["A", "B"....."H"]
        let key = keys[indexPath.section]
        
        guard let group = nations[key] else { fatalError() }
        let nation = group[indexPath.row]
        
        var cell:UITableViewCell? = tableView.dequeueReusableCell(withIdentifier: "cell")
        if cell == nil {
            cell = UITableViewCell(style: .value1, reuseIdentifier: "cell")
        }
        guard let cell = cell else { fatalError() }
        var content = cell.defaultContentConfiguration()
        content.text = nation.name
        content.textProperties.font = .boldSystemFont(ofSize: 25)
        content.textProperties.color = .red

        content.image = UIImage(named: nation.flag)
        content.imageProperties.maximumSize = CGSize(width: 100, height: 80)

        content.secondaryText = "Group \(nation.group)"
        content.secondaryTextProperties.color = .blue
        cell.contentConfiguration = content

        return cell
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let label = UILabel()
        let keys = nations.keys.sorted() //["A", "B"....."H"]
        let key = keys[section]
        label.text = "Group \(key)"
        label.textAlignment = .center
        label.font = .boldSystemFont(ofSize: 30)
        label.backgroundColor = .lightGray
        return label
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 60
    }
}


