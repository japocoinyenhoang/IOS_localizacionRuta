//
//  ViewController.swift
//  localizacionRuta
//
//  Created by Tardes on 19/5/21.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController, CLLocationManagerDelegate{
    
    var listaLugares: [cLugar] = []
    //let direcciones = MKDirections()
    let localizacionManager = CLLocationManager()
    
    @IBOutlet weak var miMapa: MKMapView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        

        localizacionManager.delegate = self
        
        //elegir el grado de decision
        localizacionManager.desiredAccuracy = kCLLocationAccuracyBest
        //solicito autorizacion
        localizacionManager.requestAlwaysAuthorization()
        //inicia la localizacion
        localizacionManager.startUpdatingLocation()
        
        //Introducimos las coordenadas
        miMapa.centerCoordinate = CLLocationCoordinate2D(latitude: 40.29410018211713, longitude: -3.7453012964888743)
        
        
        // creacion de un point apartir del array de lugares
        listaLugares.append(cLugar(titulo: "Conservatorio", descripcion: "Parada de Metro", latitud: 40.29359674714678, longitud: -3.7461206525033224))
        listaLugares.append(cLugar(titulo: "Alonso de Mendoza", descripcion: "Parada de Metro", latitud: 40.3012354236673, longitud: -3.736266157338346))
        listaLugares.append(cLugar(titulo: "Arroyo Culebro", descripcion: "Parada de Metro", latitud: 40.289417659440964, longitud: -3.7568753253107667))
        
        
        //recorro el array de lista lugares que he creado
        for lugar in listaLugares {
            let punto = MKPointAnnotation()
            punto.coordinate = CLLocationCoordinate2D(latitude: lugar.latitud, longitude: lugar.longitud)
            punto.title = lugar.titulo
            punto.subtitle = lugar.descripcion
            miMapa.addAnnotation(punto)
        
        }
        
        //crear una region
        let Region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: listaLugares[0].latitud, longitude: listaLugares[0].longitud),latitudinalMeters: 2500, longitudinalMeters: 2500)
        
        //ver la region definida
        miMapa.setRegion(Region, animated: true)
        
      
        /*let conservatorio = MKPointAnnotation()
       
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
        miMapa.addAnnotation(arroyoCulebro)*/
      
        
    }
    func locationManager (_ localizacionManager: CLLocationManager, didUpdateLocations locations:[CLLocation]) {
        // localizacion
        print("localizacion del usuario \(locations)")
        print("latitud \(locations[0].coordinate.latitude)")
        print("longitud \(locations[0].coordinate.longitude)")
        
    }
    
    
    
}

