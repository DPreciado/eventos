//
//  ViewController.swift
//  eventos
//
//  Created by Alumno on 11/9/20.
//  Copyright © 2020 Alumno. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var eventos: [Evento] = []
    
    func tableView(tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat{
        return 284
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return eventos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celdaEvento = tableView.dequeueReusableCell(withIdentifier: "celdaEvento") as! CeldaEventoController
        
        celdaEvento.lblTitulo.text = eventos[indexPath.row].titulo
        celdaEvento.lblLugar.text = eventos[indexPath.row].lugar
        celdaEvento.lblFecha.text = eventos[indexPath.row].fecha
        celdaEvento.lblHora.text = eventos[indexPath.row].hora
        
        celdaEvento.imgEvento.image = UIImage(named: eventos[indexPath.row].imagen)
        
        return celdaEvento
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        eventos.append(Evento(titulo: "Labrisa", fecha: "Hoy", hora: "3 pm", lugar: "En la cancha", imagen: "Frio"))
        
        eventos.append(Evento(titulo: "Frio", fecha: "Mañana", hora: "4 pm", lugar: "En la cocina", imagen: "laberinto"))
    }


}

