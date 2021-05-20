//
//  cLugar.swift
//  localizacionRuta
//
//  Created by Tardes on 20/5/21.
//

import Foundation
import MapKit

class cLugar {
    var titulo: String
    var descripcion: String
    var latitud: Double
    var longitud: Double
   //o esto: var localizacion: MKPointAnnotation que sustituiria a los dos
    
    //inicializo las variables con el constructor
    init( titulo: String, descripcion: String, latitud: Double, longitud: Double) {
        self.titulo = ""
        self.descripcion = ""
        self.latitud = 0
        self.longitud = 0
    }
}
