//
//  Alumno.swift
//  AlumnosTable
//
//  Created by Alumno on 9/22/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

class Alumno {
    var nombre : String
    var matricula : String
    var carrera : String
    var edad : String

    init(nombre : String, matricula : String, carrera : String, edad : String) {
        self.nombre = nombre
        self.matricula = matricula
        self.carrera = carrera
        self.edad = edad
    }
}
