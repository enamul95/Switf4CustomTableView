//
//  ViewController.swift
//  CustomTableView
//
//  Created by Enamul on 5/12/17.
//  Copyright © 2017 Haque IT. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var arryRes = [[String:Any]]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        arryRes = [
            ["name":"Tiger","icon":"tiger_icon"],
            ["name":"Fox","icon":"fox_icon"],
            ["name":"Squirrel","icon":"squirrel_icon"],
            ["name":"Cow","icon":"cow_icon"]
        ]

      
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arryRes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let  cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! Custom_cell
        
        cell.label_name.text = arryRes[indexPath.row] ["name"] as! String
        cell.imageIcon.image = UIImage(named: arryRes[indexPath.row]["icon"] as! String)
        
        
        cell.layer.borderWidth = 1.0
        cell.layer.borderColor = UIColor.gray.cgColor

        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath) as! Custom_cell
        print(cell.label_name.text)
    }

}

