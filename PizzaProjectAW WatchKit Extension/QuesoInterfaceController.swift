//
//  QuesoInterfaceController.swift
//  PizzaProjectAW
//
//  Created by Maria on 25/07/2016.
//  Copyright © 2016 MariaWebIdeas. All rights reserved.
//

import WatchKit
import Foundation


class QuesoInterfaceController: WKInterfaceController {

    var tamanoSeleccionado:String = ""
    var masaSeleccionada:String = ""
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        let c = context as! ValoresSeleccionados
        self.tamanoSeleccionado = c.tamanoSeleccionado
        self.masaSeleccionada = c.masaSeleccionada
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func mozarellaSelected() {
        
        let valorContexto = ValoresSeleccionados(t: tamanoSeleccionado, m: masaSeleccionada, q: "Mozarella", i: [""], pc: false)
        
        pushControllerWithName("IdentificadorIngredientes", context:valorContexto)
    }
    
    @IBAction func cheddarSelected() {
        
        let valorContexto = ValoresSeleccionados(t: tamanoSeleccionado, m: masaSeleccionada, q: "Cheddar", i: [""], pc: false)
        
        pushControllerWithName("IdentificadorIngredientes", context:valorContexto)
    }
    
    @IBAction func parmesanoSelected() {
        
        let valorContexto = ValoresSeleccionados(t: tamanoSeleccionado, m: masaSeleccionada, q: "Parmesano", i: [""], pc: false)
        
        pushControllerWithName("IdentificadorIngredientes", context:valorContexto)
    }
    
    @IBAction func sinQuesoSelected() {
        
        let valorContexto = ValoresSeleccionados(t: tamanoSeleccionado, m: masaSeleccionada, q: "Sin Queso", i: [""], pc: false)
        
        pushControllerWithName("IdentificadorIngredientes", context:valorContexto)
    }
    
}
