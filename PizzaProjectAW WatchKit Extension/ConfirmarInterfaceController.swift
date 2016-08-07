//
//  ConfirmarInterfaceController.swift
//  PizzaProjectAW
//
//  Created by Maria on 30/07/2016.
//  Copyright © 2016 MariaWebIdeas. All rights reserved.
//

import WatchKit
import Foundation


class ConfirmarInterfaceController: WKInterfaceController {
    
    var tamanoSeleccionado:String = ""
    var masaSeleccionada:String = ""
    var quesoSeleccionado:String = ""
    var ingredientesSeleccionados:[String] = [String]()
    
    @IBOutlet var tamanoFinal: WKInterfaceLabel!
    @IBOutlet var masaFinal: WKInterfaceLabel!
    @IBOutlet var quesoFinal: WKInterfaceLabel!
    @IBOutlet var ingredientesFinal: WKInterfaceLabel!

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        let c = context as! ValoresSeleccionados
        self.tamanoSeleccionado = c.tamanoSeleccionado
        self.masaSeleccionada = c.masaSeleccionada
        self.quesoSeleccionado = c.quesoSeleccionado
        self.ingredientesSeleccionados = c.ingredientesSeleccionados
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        self.tamanoFinal.setText("Tamaño: \(tamanoSeleccionado)")
        self.masaFinal.setText("Masa: \(masaSeleccionada)")
        self.quesoFinal.setText("Queso: \(quesoSeleccionado)")
        var allIngredientes : String = "Ingredientes: "
        for i in 0 ..< self.ingredientesSeleccionados.count {
             if (i == 0) {
                allIngredientes += "\(self.ingredientesSeleccionados[i])"
             } else if (i < ingredientesSeleccionados.count-2) {
                allIngredientes += ", \(self.ingredientesSeleccionados[i])"
            } else if (i < ingredientesSeleccionados.count-1) {
                allIngredientes += ", \(self.ingredientesSeleccionados[i]) "
            } else {
                allIngredientes += " y \(self.ingredientesSeleccionados[i])."
            }
        }
        self.ingredientesFinal.setText(allIngredientes)
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
