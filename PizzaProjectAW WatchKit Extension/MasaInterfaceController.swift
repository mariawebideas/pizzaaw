//
//  MasaInterfaceController.swift
//  PizzaProjectAW
//
//  Created by Maria on 25/07/2016.
//  Copyright © 2016 MariaWebIdeas. All rights reserved.
//

import WatchKit
import Foundation

class MasaInterfaceController: WKInterfaceController {
    
    var tamanoSeleccionado:String = ""
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        let c = context as! ValoresSeleccionados
        self.tamanoSeleccionado = c.tamanoSeleccionado
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func delgadaSeleccionada() {
        
        let valorContexto = ValoresSeleccionados(t: tamanoSeleccionado, m: "Delgada", q: "", i: [""], pc: false)
        
        pushControllerWithName("IdentificadorQueso", context:valorContexto)
    }
    
    @IBAction func crujienteSeleccionada() {
        
        let valorContexto = ValoresSeleccionados(t: tamanoSeleccionado, m: "Crujiente", q: "", i: [""], pc: false)
        
        pushControllerWithName("IdentificadorQueso", context:valorContexto)
    }
    
    @IBAction func gruesaSeleccionada() {
        
        let valorContexto = ValoresSeleccionados(t: tamanoSeleccionado, m: "Gruesa", q: "", i: [""], pc: false)
        
        pushControllerWithName("IdentificadorQueso", context:valorContexto)
    }
    
}
