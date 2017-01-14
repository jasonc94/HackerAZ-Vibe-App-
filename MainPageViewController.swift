//
//  MainPageViewController.swift
//  HackerAZ2017
//
//  Created by william chen on 1/14/17.
//  Copyright © 2017 Jason Cai. All rights reserved.
//

import UIKit
import MapKit

class MainPageViewController: UIViewController {
    
    
    @IBOutlet weak var tabBar: UITabBar!
    @IBOutlet weak var dropButton: UIButton!
    @IBOutlet weak var map: MKMapView!
    @IBOutlet weak var controller: UISegmentedControl!
 
    //var longit : Double?
    //var latit: Double?

    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        // Do any additional setup after loading the view.
        let lo: CLLocationDegrees = -118.4913
        let lati: CLLocationDegrees = 34.0082
        let coordinates = CLLocationCoordinate2D(latitude: lati, longitude: lo)
        
        let span: MKCoordinateSpan = MKCoordinateSpanMake(0.01,0.01)
        let region: MKCoordinateRegion = MKCoordinateRegionMake(coordinates, span)
        self.map.setRegion(region, animated: true)
        
        
        let annotation = MKPointAnnotation()
        annotation.coordinate = coordinates
        annotation.title = "Cora's Coffee Shop"
        self.map.addAnnotation(annotation)
 
        map.mapType = MKMapType.standard

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func changeMapType(_ sender: UISegmentedControl) {
        if controller.selectedSegmentIndex == 0{
            map.mapType = MKMapType.standard
        }
        else{
            map.mapType = MKMapType.hybrid
        }
    }
 
    @IBAction func dropPin(_ sender: UILongPressGestureRecognizer) {
        let location =  sender.location(in: self.map)
        let locCord = self.map.convert(location,toCoordinateFrom: self.map)
        let annotation = MKPointAnnotation()
        annotation.coordinate = locCord
        annotation.title = "place"
        annotation.subtitle = "Location of place"
        //self.map.removeAnnotation(map.annotations as! MKAnnotation)
        self.map.addAnnotation(annotation)
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
