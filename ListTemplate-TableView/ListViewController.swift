//
//  ListViewController.swift
//  ListTemplate-TableView
//
//  Created by 张鹏 on 2019/11/28.
//  Copyright © 2019 深圳可飞猪科技有限公司. All rights reserved.
//

import UIKit


/// 列表页面
class ListViewController: UITableViewController {
    
    /// 数据项
    var items: [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        for familyName in UIFont.familyNames {
            items.append(contentsOf: UIFont.fontNames(forFamilyName: familyName))
        }
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ItemCell", for: indexPath)
        let font = UIFont(name: items[indexPath.row], size: 24)
        let summaryFont = UIFont(name: items[indexPath.row], size: 20)
        
        cell.textLabel?.text = font?.fontName
        cell.textLabel?.font = font
        
        cell.detailTextLabel?.text = "对应的中文样式"
        cell.detailTextLabel?.font = summaryFont
        cell.detailTextLabel?.textColor = .gray
        
        return cell
    }
}
