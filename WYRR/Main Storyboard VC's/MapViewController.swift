//
//  MapViewController.swift
//  WYRR
//
//  Created by apple on 06/04/21.
//

import UIKit
import MapKit

class MapViewController: UIViewController, CLLocationManagerDelegate{
    
    @IBOutlet weak var mapView: MKMapView!
    var locationManager = CLLocationManager()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        
        // Check for Location Services
        if (CLLocationManager.locationServicesEnabled()) {
            locationManager.requestAlwaysAuthorization()
            locationManager.requestWhenInUseAuthorization()
        }
        
        DispatchQueue.main.async {
            self.locationManager.startUpdatingLocation()
        }
        
        let location = CLLocation(latitude: 43.651070, longitude: -79.347015)
        self.centerMapOnLocation(location: location)
        
        addRadiusCircle(location: location)
    }
    
    func addRadiusCircle(location: CLLocation){
            self.mapView.delegate = self
        let circle = MKCircle(center: location.coordinate, radius: 1000 as CLLocationDistance)
            self.mapView.addOverlay(circle)
        }

        func mapView(mapView: MKMapView!, rendererForOverlay overlay: MKOverlay!) -> MKOverlayRenderer! {
            if overlay is MKCircle {
                let circle = MKCircleRenderer(overlay: overlay)
                circle.strokeColor = UIColor.red
                circle.fillColor = UIColor(red: 255, green: 0, blue: 0, alpha: 0.1)
                circle.lineWidth = 1
                return circle
            } else {
                return nil
            }
        }
    
    
    func centerMapOnLocation(location: CLLocation) {
        let region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: location.coordinate.latitude, longitude: location.coordinate.longitude), span: MKCoordinateSpan(latitudeDelta: 0.03, longitudeDelta: 0.03))
        DispatchQueue.main.async {
            self.mapView.setRegion(region, animated: true)
            let annotation = MKPointAnnotation()
            annotation.coordinate = location.coordinate
            self.mapView.addAnnotation(annotation)
        }
    }
    
    @IBAction func btn_back(_ sender: Any) {
        navigationController?.popViewController(animated: true)
        dismiss(animated: true, completion: nil)
    }
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}

extension MapViewController : MKMapViewDelegate{
    
    func mapView(_ mapView: MKMapView, rendererFor overlay: MKOverlay) -> MKOverlayRenderer {
        
        var circleRenderer = MKCircleRenderer()
        if let overlay = overlay as? MKCircle {
            circleRenderer = MKCircleRenderer(circle: overlay)
            circleRenderer.fillColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.3026001785)
            circleRenderer.strokeColor = .black
            circleRenderer.lineWidth = 2
            circleRenderer.alpha = 0.5
        }
        
        return circleRenderer
    }
    
}
