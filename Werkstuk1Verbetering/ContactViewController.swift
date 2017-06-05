//
//  ContactViewController.swift
//  Werkstuk1Verbetering
//
//  Created by Admin on 5/06/17.
//  Copyright © 2017 Geordy. All rights reserved.
//

import UIKit
import CoreLocation
import MapKit

class ContactViewController: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate {

    let voornamen = ["geordy", "sara", "test"]
    let achternamen = ["van cutsem", "van cutsem", "klein"]
    let lengtegraad = [50.933349, 50.933355, 50.933360]
    let breedtegraad = [4.054124, 4.054124, 4.054124]
    let photo = UIImage(named: "contact")
    
    var annotation = MKPointAnnotation()
    
    @IBOutlet weak var voornaamLabel: UILabel!
    
    @IBOutlet weak var achternaamLabel: UILabel!
    
    @IBOutlet weak var photoView: UIImageView!
    
    @IBOutlet weak var mapView: MKMapView!
    
    
    
    var index: IndexPath = IndexPath(row: 0, section: 0)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "contact overview"
        voornaamLabel.text = voornamen[index.row]
        achternaamLabel.text = achternamen[index.row]
        annotation.title = voornamen[index.row]
        
        let coordinate = CLLocationCoordinate2D(latitude: lengtegraad[index.row], longitude: breedtegraad[index.row])
        annotation.coordinate = coordinate
        mapView.addAnnotation(annotation)
        photoView.image = photo
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func mapView(_ mapview: MKMapView, didUpdate userLocation: MKUserLocation)
    {
        let center = CLLocationCoordinate2D(latitude: lengtegraad[index.row], longitude: breedtegraad[index.row])
        let region = MKCoordinateRegion(center: center, span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))
        
        mapView.setRegion(region, animated: true)
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
