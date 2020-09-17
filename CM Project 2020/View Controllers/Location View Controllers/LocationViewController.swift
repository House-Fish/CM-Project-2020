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
    @IBOutlet weak var countryTextField: UITextField!
    @IBOutlet weak var cityTextField: UITextField!
    @IBOutlet weak var streetTextField: UITextField!
    @IBOutlet weak var geocodeButton: UIButton!
    @IBOutlet weak var activityIndicatorView: UIActivityIndicatorView!
    
    var mysideMenu = true
    lazy var geocoder = CLGeocoder()

    
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
    
    @IBOutlet weak var loadbutton: UIButton!
    
    @IBOutlet weak var yourLocationButton: UIButton!
    
    let locationManager = CLLocationManager()


    
    override func viewDidLoad() {
        super.viewDidLoad()
        getCurrentLocation()
        mapView.layer.cornerRadius = 15
        mapView.layer.masksToBounds = true
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
            let elevationstatus = ElevationInfo.status
            
            let myResult = elevationdata.map(String.init).joined()
            let intResult = Int(myResult)
            
      
            DispatchQueue.main.async {
            
            print(elevationstatus)
                
            if elevationstatus == "fail" {
                self.errorLabel.text = ("Error Occured, unable to access data")
                
            }
            if intResult! <= 40 {
                
                self.errorLabel.text = ("You are only \(intResult!)m tall, you should travel more in land (>1.6km) or go to a higher place!")
                
            } else {
                
                self.errorLabel.text = ("You are \(intResult!)m tall, you are safe :D")
                
            }
        }
    }
}
    
    @IBAction func getLatLongButtonPressed(_ sender: Any) {
        
        guard let country = countryTextField.text else { return }
        guard let street = streetTextField.text else { return }
        guard let city = cityTextField.text else { return }

        // Create Address String
        let address = "\(country), \(city), \(street)"

        // Geocode Address String
        geocoder.geocodeAddressString(address) { (placemarks, error) in
            // Process Response
            self.processResponse(withPlacemarks: placemarks, error: error)
        }

        // Update View
        geocodeButton.isHidden = true
        activityIndicatorView.startAnimating()
        
}
        
            private func processResponse(withPlacemarks placemarks: [CLPlacemark]?, error: Error?) {
                // Update View
                geocodeButton.isHidden = false
                activityIndicatorView.stopAnimating()

                if let error = error {
                    print("Unable to Forward Geocode Address (\(error))")
                    errorLabel.text = "Unable to Find Location for Address"

                } else {
                    var location: CLLocation?
                    
                    if let placemarks = placemarks, placemarks.count > 0 {
                        location = placemarks.first?.location
                    }

                    if let location = location {
                        
                        let coordinate = location.coordinate
                        
                        let elevationRequest  = ElevationRequest(geoCoding: "\(coordinate.latitude),\(coordinate.longitude)")
                                    
                        let latitudedouble = Double(coordinate.latitude)
                        
                        let longitudedouble = Double(coordinate.longitude)

                        let annotation = MKPointAnnotation()
                                                  
                        annotation.coordinate = CLLocationCoordinate2D(latitude: latitudedouble, longitude: longitudedouble)
                        
                        self.mapView.addAnnotation(annotation)
                        
                        let region = MKCoordinateRegion(center: annotation.coordinate, latitudinalMeters: 1000, longitudinalMeters: 1000)
                        
                        self.mapView.setRegion(region, animated: true)
                        elevationRequest.getElevation { (ElevationInfo) in
                            let elevationdata = ElevationInfo.data
                                            
                            let myResult = elevationdata.map(String.init).joined()
                            
                            let intResult = Int(myResult)
                            
                            print(intResult!)
                            
                            DispatchQueue.main.async { // Correct

                                if intResult! <= 40 {
                                    
                                    self.errorLabel.text = ("The location is \(intResult!)m tall, should travel more in land (>1.6km) or go to a higher place!")
                                    
                                } else {
                                    
                                    self.errorLabel.text = ("The location is \(intResult!)m tall, you are safe :D")
                                }
                            }
                        }
                    }
                
                        else  {
                            self.errorLabel.text = "No Matching Location Found"
                    }
                }
            }
        }
