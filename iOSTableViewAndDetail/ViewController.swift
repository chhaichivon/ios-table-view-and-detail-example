//
//  ViewController.swift
//  iOSTableViewAndDetail
//
//  Created by Chhai Chivon on 2/18/18.
//  Copyright © 2018 Chhai Chivon. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UITableViewDataSource,UITableViewDelegate{
    
    @IBOutlet weak var tableView: UITableView!
    
    var countries = [Country]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        for index in 1...30 {
            let country = Country(name: "name \(index)", description: "description \(index)")
            countries.append(country)
        }
        
        tableView.delegate = self
        tableView.dataSource = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return countries.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")
        cell?.textLabel?.text = countries[indexPath.row].name
        cell?.detailTextLabel?.text = countries[indexPath.row].description
//        cell?.imageView. = UIImage(named: "Screen Shot 2018-02-18 at 11.41.11 PM")
        return cell!
    }

    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       performSegue(withIdentifier: "showDetail", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let destinationViewController = segue.destination as? DetailViewController {
            destinationViewController.country = countries[(tableView.indexPathForSelectedRow?.row)!]
        }
        

    }
}

