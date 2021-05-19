//
//  ViewController.swift
//  localizacionRuta
//
//  Created by Tardes on 19/5/21.
//

import UIKit
import MapKit

class ViewController: UIViewController {
    
    @IBOutlet weak var miMapa: MKMapView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //Introducimos las coordenadas
        miMapa.centerCoordinate = CLLocationCoordinate2D(latitude: 40.29410018211713, longitude: -3.7453012964888743)
        
        let conservatorio = MKPointAnnotation()
       
        conservatorio.coordinate = CLLocationCoordinate2D(latitude: 40.29359674714678, longitude: -3.7461206525033224)
        conservatorio.title = "Conservatorio"
        
        //mostrar el point en el mapa
        miMapa.addAnnotation(conservatorio)
        
        //crear una region
        let Region = MKCoordinateRegion(center: conservatorio.coordinate, latitudinalMeters: 2500, longitudinalMeters: 2500)
        
        //ver la region definida
        miMapa.setRegion(Region, animated: true)
        
        let alonsoMendoza = MKPointAnnotation()
        let arroyoCulebro = MKPointAnnotation()
        alonsoMendoza.coordinate = CLLocationCoordinate2D(latitude: 40.3012354236673, longitude: -3.736266157338346)
        arroyoCulebro.coordinate = CLLocationCoordinate2D(latitude: 40.289417659440964,longitude: -3.7568753253107667)
        alonsoMendoza.title = "Alonso de Mendoza"
        arroyoCulebro.title = "Arroyo Culebro"
        miMapa.addAnnotation(alonsoMendoza)
        miMapa.addAnnotation(arroyoCulebro)
      
        
    }
    
    
}

