//
//  DetailViewController.swift
//  iOSTableViewAndDetail
//
//  Created by Chhai Chivon on 2/19/18.
//  Copyright © 2018 Chhai Chivon. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    var country : Country?
    
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblDescription: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        lblName.text = country?.name
        lblDescription.text = country?.description
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
