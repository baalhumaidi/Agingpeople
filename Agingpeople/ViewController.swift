//
//  ViewController.swift
//  Agingpeople
//
//  Created by admin on 08/12/2021.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource {
  
    @IBOutlet weak var myTableView: UITableView!
    let names = ["Ahmed", "Tom","Antony","Mathew","George","Betty","Fran","Joe","Helda","Sara","Jeffey","Abraham"]
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myTableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        cell.textLabel?.text = names[indexPath.row]

        let age = Int.random(in: 5...95)
        cell.detailTextLabel?.text = "\(age) years ago"
        return cell

    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        myTableView.dataSource = self
        // Do any additional setup after loading the view.
    }


}

