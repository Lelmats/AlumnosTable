//
//  DetallesAlumnoController.swift
//  AlumnosTable
//
//  Created by Alumno on 9/27/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

import UIKit

class DetallesAlumnoController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var lblEdad: UILabel!
    @IBOutlet weak var lblMatriicula: UILabel!
    @IBOutlet weak var lblCarrera: UILabel!
    
    var alumno : Alumno?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Detalles de alumno"
        
        if alumno != nil {
            self.title = alumno!.nombre
            lblMatriicula.text = alumno!.matricula
            lblEdad.text = "\(alumno!.edad)"
            lblCarrera.text = alumno!.carrera
        }
        else {
            self.title = "Lel"
        }
    }
    
    //Altura de celda
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 35
    }
    //Nùmero de secciones que tiene mi table view
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    //Numero de filas por seccion
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return alumno!.materias.count
    }
    
    //Construye cada celda
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaMateria") as? CeldaMateriaController
        celda?.lblMateria.text = alumno!.materias[indexPath.row].nombre
        celda?.lblCodigo.text = alumno!.materias[indexPath.row].codigo
        return celda!
    }
}
