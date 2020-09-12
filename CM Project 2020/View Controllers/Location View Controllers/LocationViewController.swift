//
//  LocationViewController.swift
//  CM Project (Draft 1)
//
//  Created by Jia Yu Lee on 8/9/20.
//  Copyright © 2020 Jia Yu. All rights reserved.
//

import UIKit
import CoreLocation
import MapKit

class LocationViewController: UIViewController, CLLocationManagerDelegate {

    @IBOutlet weak var mapView: MKMapView!
    @IBOutlet weak var sideMenuButton: UIButton!
    
    var mysideMenu = true
    
    
    @IBAction func sideMenu(_ sender: Any) {
        if (mysideMenu) {
            leadingConst.constant = 0
            
            UIView.animate(withDuration: 0.3, delay: 0.1, options: .curveEaseIn, animations: {
                self.view.layoutIfNeeded()
                self.sideMenuButton.isHidden = true
            })
        }
        mysideMenu = !mysideMenu
    }
    @IBAction func sideMenuBackAreYouSafe(_ sender: Any) {
            if mysideMenu == false{
                leadingConst.constant = 417
                
                UIView.animate(withDuration: 0.3, delay: 0.1, options: .curveEaseIn, animations: {
                    self.view.layoutIfNeeded()
                    self.sideMenuButton.isHidden = false
                })
            }
            mysideMenu = !mysideMenu
        }
    
    
    @IBOutlet weak var leadingConst: NSLayoutConstraint!
    
    @IBOutlet weak var errorLabel: UILabel!
    
    @IBOutlet weak var addressTextView: UITextView!
    
    @IBOutlet weak var loadbutton: UIButton!
    
    @IBOutlet weak var yourLocationButton: UIButton!
    
    let locationManager = CLLocationManager()


    
    override func viewDidLoad() {
        super.viewDidLoad()
        getCurrentLocation()
        mapView.layer.cornerRadius = 15
        mapView.layer.masksToBounds = true
        addressTextView.layer.cornerRadius = 10
        addressTextView.layer.masksToBounds = true
        loadbutton.layer.cornerRadius = 10
        loadbutton.layer.masksToBounds = true
        yourLocationButton.layer.cornerRadius = 10
        yourLocationButton.layer.masksToBounds = true
        errorLabel.layer.cornerRadius = 15
        errorLabel.layer.masksToBounds = true
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func getCurrentLocation() {
            // Ask for Authorisation from the User.
            self.locationManager.requestAlwaysAuthorization()

            // For use in foreground
            self.locationManager.requestWhenInUseAuthorization()

            if CLLocationManager.locationServicesEnabled() {
                locationManager.delegate = self
                
                locationManager.desiredAccuracy = kCLLocationAccuracyNearestTenMeters
                
                locationManager.startUpdatingLocation()
            }
        }

    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
           guard let locValue: CLLocationCoordinate2D = manager.location?.coordinate else { return }
           print("locations = \(locValue.latitude) \(locValue.longitude)")
    }

    @IBAction func getLatLongButtonPressedCurrent(_ sender: AnyObject) {
                        
        let latitudestr = String(describing: locationManager.location!.coordinate.latitude)
        
        let longitudestr = String(describing: locationManager.location!.coordinate.longitude)
        
        let elevationRequest = ElevationRequest(geoCoding: "\(latitudestr),\(longitudestr)")
        
        let latitudedouble = Double(latitudestr)
        let longitudedouble = Double(longitudestr)

        let annotation = MKPointAnnotation()
                                  
        annotation.coordinate = CLLocationCoordinate2D(latitude: latitudedouble!, longitude: longitudedouble!)
        
        self.mapView.addAnnotation(annotation)
        
        let region = MKCoordinateRegion(center: annotation.coordinate, latitudinalMeters: 1000, longitudinalMeters: 1000)
        
        self.mapView.setRegion(region, animated: true)
                                  
            elevationRequest.getElevation { (ElevationInfo) in
            let elevationdata = ElevationInfo.data
                
            let myResult = elevationdata.map(String.init).joined()
                
            let intResult = Int(myResult)
            
      
            DispatchQueue.main.async {
                                
            if intResult! <= 40 {
                self.errorLabel.text = ("You should travel more in land (>1.6km) or go to a higher place!")
            } else {
                self.errorLabel.text = ("High Enough, you are safe :D")
            }
        }
    }
}
    
    @IBAction func getLatLongButtonPressed(_ sender: Any) {
        if addressTextView.text.count > 0 {
            LocationManager.shared.getReverseGeoCodedLocation(address: addressTextView.text!, completionHandler: { (location:CLLocation?, placemark:CLPlacemark?, error:NSError?) in
                
                if error != nil {
                    print((error?.localizedDescription)!)
                    return
                }
                
                guard let placemark = placemark else {
                    print("Location can't be fetched")
                    return
                }
                
                let errorinfo = (placemark.addressDictionary?.description ?? "")
                let latinfo = ((placemark.location?.coordinate.latitude)!)
                let loninfo = ((placemark.location?.coordinate.longitude)!)
                
                let latitudedouble = Double(latinfo)
                let longitudedouble = Double(loninfo)

                let annotation = MKPointAnnotation()
                                          
                annotation.coordinate = CLLocationCoordinate2D(latitude: latitudedouble, longitude: longitudedouble)
                
                self.mapView.addAnnotation(annotation)
                
                let region = MKCoordinateRegion(center: annotation.coordinate, latitudinalMeters: 1000, longitudinalMeters: 1000)
                
                self.mapView.setRegion(region, animated: true)
                
//              print("\(latinfo), \(loninfo), \(errorinfo)")
                
                let elevationRequest = ElevationRequest(geoCoding: "\(latinfo),\(loninfo)")
                
                elevationRequest.getElevation { (ElevationInfo) in
                    let elevationdata = ElevationInfo.data
                                    
                    let myResult = elevationdata.map(String.init).joined()
                    
                    let intResult = Int(myResult)
                    
                    print(intResult!)
                    

                    DispatchQueue.main.async { // Correct
                        
                        if intResult! <= 40 {
                            self.errorLabel.text = ("You should travel more in land (>1.6km) or go to a higher place!")
                        } else {
                            self.errorLabel.text = ("High Enough, you are safe :D")
                        }
                    }
                }
            }
        )
    }
}
    
}

