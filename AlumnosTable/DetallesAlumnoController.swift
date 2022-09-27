//
//  DetallesAlumnoController.swift
//  AlumnosTable
//
//  Created by Alumno on 9/27/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

import UIKit

class DetallesAlumnoController: UIViewController {
    
    @IBOutlet weak var lblEdad: UILabel!
    @IBOutlet weak var lblMatriicula: UILabel!
    @IBOutlet weak var lblCarrera: UILabel!

    @IBOutlet weak var lblMateria: UILabel!
    @IBOutlet weak var lblCodigo: UILabel!
    
    var alumno : Alumno?
    var materia : Materia?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Detalles de alumno"
        
        if alumno != nil {
            self.title = alumno!.nombre
            lblMatriicula.text = alumno!.matricula
            lblEdad.text = "\(alumno!.edad)"
            lblCarrera.text = alumno!.carrera
            lblMateria.text = materia!.nombre
            lblCodigo.text = materia!.codigo

        }
        else {
            self.title = "Lel"
        }
    }
}
