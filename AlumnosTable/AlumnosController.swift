//
//  ViewController.swift
//  AlumnosTable
//
//  Created by Alumno on 9/22/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

import UIKit

class AlumnosController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tvAlumnos: UITableView!
    
    var Alumnos : [Alumno] = []
    var Materias_1 : [Materia] = []
    var Materias_2 : [Materia] = []
    var Materias_3 : [Materia] = []
    
    //Altura de celda
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 90
    }
    //Nùmero de secciones que tiene mi table view
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    //Numero de filas por seccion
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Alumnos.count
    }
    
    //Construye cada celda
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaAlumno") as? CeldaAlumnoController
        celda?.lblNombre.text = Alumnos[indexPath.row].nombre
        celda?.lblMatricula.text = Alumnos[indexPath.row].matricula
        celda?.lblCarrera.text = Alumnos[indexPath.row].carrera
        celda?.lblEdad.text = Alumnos[indexPath.row].edad
        return celda!
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Materias_1.append(Materia(nombre: "Historia", codigo: "19923332"))
        Materias_1.append(Materia(nombre: "Espanol", codigo: "1243523"))
        
        Materias_2.append(Materia(nombre: "Diosito", codigo: "14523523"))
        Materias_2.append(Materia(nombre: "Ingleh", codigo: "234235123"))
        
        Materias_3.append(Materia(nombre: "Dispositivos", codigo: "234235"))
        Materias_3.append(Materia(nombre: "Dioses del olimpo", codigo: "12335423"))
        
        // Do any additional setup after loading the view.
        Alumnos.append(Alumno(nombre: "Max Rivera", matricula: "199177", carrera: "Multimedia", edad: "21", materias: Materias_1))
        Alumnos.append(Alumno(nombre: "Myriam", matricula: "143242", carrera: "Multimedia", edad: "23", materias: Materias_2))
        Alumnos.append(Alumno(nombre: "Tania", matricula: "1434234", carrera: "Multimedia", edad: "24", materias: Materias_3))

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        let destino = segue.destination as! DetallesAlumnoController
        destino.alumno = Alumnos [tvAlumnos.indexPathForSelectedRow!.row]

    }
}

