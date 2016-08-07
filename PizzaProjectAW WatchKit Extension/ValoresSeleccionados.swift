//
//  ValoresSeleccionados.swift
//  PizzaProjectAW
//
//  Created by Maria on 25/07/2016.
//  Copyright © 2016 MariaWebIdeas. All rights reserved.
//

import WatchKit

class ValoresSeleccionados: NSObject {
    
    var tamanoSeleccionado:String = ""
    var masaSeleccionada:String = ""
    var quesoSeleccionado:String = ""
    var ingredientesSeleccionados:[String] = [String]()
    var pizzaConfirmada:Bool = false
    
    init (t:String, m:String, q:String, i:[String], pc:Bool) {
        
        self.tamanoSeleccionado = t
        self.masaSeleccionada = m
        self.quesoSeleccionado = q
        self.ingredientesSeleccionados = i
        self.pizzaConfirmada = pc
    }
    
}
