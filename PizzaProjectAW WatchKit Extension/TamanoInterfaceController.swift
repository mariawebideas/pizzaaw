//
//  TamanoInterfaceController.swift
//  PizzaProjectAW
//
//  Created by Maria on 25/07/2016.
//  Copyright © 2016 MariaWebIdeas. All rights reserved.
//

import WatchKit
import Foundation


class TamanoInterfaceController: WKInterfaceController {

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func chicaSelected() {
        
        let valorContexto = ValoresSeleccionados(t: "Chica", m: "", q: "", i: [""], pc: false)
        
        pushControllerWithName("IdentificadorMasa", context:valorContexto)
    }
    
    @IBAction func medianaSelected() {
        
        let valorContexto = ValoresSeleccionados(t: "Mediana", m: "", q: "", i: [""], pc: false)
        
        pushControllerWithName("IdentificadorMasa", context:valorContexto)
    }
 
    @IBAction func grandeSelected() {
        
        let valorContexto = ValoresSeleccionados(t: "Grande", m: "", q: "", i: [""], pc: false)
        
        pushControllerWithName("IdentificadorMasa", context:valorContexto)
    }
    
}
