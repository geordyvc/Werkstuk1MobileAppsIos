//
//  ContactViewController.swift
//  Werkstuk1Verbetering
//
//  Created by Admin on 5/06/17.
//  Copyright © 2017 Geordy. All rights reserved.
//

import UIKit

class ContactViewController: UIViewController {

    let voornamen = ["geordy", "sara", "test"]
    let achternamen = ["van cutsem", "van cutsem", "klein"]
    let lengtegraad = [50.933349, 50.933355, 50.933360]
    let breedtegraad = [4.054124, 4.054124, 4.054124]
    let photo = UIImage(named: "contact")
    
    @IBOutlet weak var voornaamLabel: UILabel!
    
    @IBOutlet weak var achternaamLabel: UILabel!
    
    @IBOutlet weak var photoView: UIImageView!
    
    @IBOutlet weak var mapView: MKMapView!
    
    
    var index: IndexPath = IndexPath(row: 0, section: 0)
    
    override func viewDidLoad() {
        super.viewDidLoad()

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
