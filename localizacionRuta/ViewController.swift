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
        let Region = MKCoordinateRegion(center: conservatorio.coordinate, latitudinalMeters: 1000, longitudinalMeters: 1000)
        
        //ver la region definida
        miMapa.setRegion(Region, animated: true)
    }
    
    
}

