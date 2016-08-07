//
//  IngredientesInterfaceController.swift
//  PizzaProjectAW
//
//  Created by Maria on 25/07/2016.
//  Copyright © 2016 MariaWebIdeas. All rights reserved.
//

import WatchKit
import Foundation


class IngredientesInterfaceController: WKInterfaceController {
    
    var tamanoSeleccionado:String = ""
    var masaSeleccionada:String = ""
    var quesoSeleccionado:String = ""
    var ingredientesSeleccionados:[String] = [String]()
    var ingredientesContador:Int = 0
    
    @IBOutlet var jamonBoton: WKInterfaceSwitch!
    @IBOutlet var pepperoniBoton: WKInterfaceSwitch!
    @IBOutlet var pavoBoton: WKInterfaceSwitch!
    @IBOutlet var salchichaBoton: WKInterfaceSwitch!
    @IBOutlet var aceitunaBoton: WKInterfaceSwitch!
    @IBOutlet var cebollaBoton: WKInterfaceSwitch!
    @IBOutlet var pimientoBoton: WKInterfaceSwitch!
    @IBOutlet var pinaBoton: WKInterfaceSwitch!
    @IBOutlet var anchoaBoton: WKInterfaceSwitch!
    

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        let c = context as! ValoresSeleccionados
        self.tamanoSeleccionado = c.tamanoSeleccionado
        self.masaSeleccionada = c.masaSeleccionada
        self.quesoSeleccionado = c.quesoSeleccionado
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        
        if !self.ingredientesSeleccionados.isEmpty {
            for selected in self.ingredientesSeleccionados {
                switch selected {
                case "Jamón":
                    jamonBoton.setOn(true)
                case "Pepperoni":
                    pepperoniBoton.setOn(true)
                case "Pavo":
                    pavoBoton.setOn(true)
                case "Salchicha":
                    salchichaBoton.setOn(true)
                case "Aceituna":
                    aceitunaBoton.setOn(true)
                case "Cebolla":
                    cebollaBoton.setOn(true)
                case "Pimiento":
                    pimientoBoton.setOn(true)
                case "Piña":
                    pinaBoton.setOn(true)
                case "Anchoa":
                    anchoaBoton.setOn(true)
                default:
                    break
                }
            }
        } else {
            jamonBoton.setOn(false)
            pepperoniBoton.setOn(false)
            pavoBoton.setOn(false)
            salchichaBoton.setOn(false)
            aceitunaBoton.setOn(false)
            cebollaBoton.setOn(false)
            pimientoBoton.setOn(false)
            pinaBoton.setOn(false)
            anchoaBoton.setOn(false)
        }
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    @IBAction func jamonSeleccionado(value: Bool) {
        manejaContador(value)
        if value == true {
            self.ingredientesSeleccionados += ["Jamón"]
        } else {
            self.ingredientesSeleccionados = ingredientesSeleccionados.filter { $0 != "Jamón" }
        }
        cincoSeleccionados()
    }
    
    @IBAction func pepperoniSeleccionado(value: Bool) {
        manejaContador(value)
        if value == true {
            self.ingredientesSeleccionados += ["Pepperoni"]
        } else {
            self.ingredientesSeleccionados = ingredientesSeleccionados.filter { $0 != "Pepperoni" }
        }
        cincoSeleccionados()
    }
    
    @IBAction func pavoSeleccionado(value: Bool) {
        manejaContador(value)
        if value == true {
            self.ingredientesSeleccionados += ["Pavo"]
        } else {
            self.ingredientesSeleccionados = ingredientesSeleccionados.filter { $0 != "Pavo" }
        }
        cincoSeleccionados()
    }
    
    @IBAction func salchichaSeleccionada(value: Bool) {
        manejaContador(value)
        if value == true {
            self.ingredientesSeleccionados += ["Salchicha"]
        } else {
            self.ingredientesSeleccionados = ingredientesSeleccionados.filter { $0 != "Salchicha" }
        }
        cincoSeleccionados()
    }
    
    @IBAction func aceitunaSeleccionada(value: Bool) {
        manejaContador(value)
        if value == true {
            self.ingredientesSeleccionados += ["Aceituna"]
        } else {
            self.ingredientesSeleccionados = ingredientesSeleccionados.filter { $0 != "Aceituna" }
        }
        cincoSeleccionados()
    }
    
    @IBAction func cebollaSeleccionada(value: Bool) {
        manejaContador(value)
        if value == true {
            self.ingredientesSeleccionados += ["Cebolla"]
        } else {
            self.ingredientesSeleccionados = ingredientesSeleccionados.filter { $0 != "Cebolla" }
        }
        cincoSeleccionados()
    }
    
    @IBAction func pimientoSeleccionado(value: Bool) {
        manejaContador(value)
        if value == true {
            self.ingredientesSeleccionados += ["Pimiento"]
        } else {
            self.ingredientesSeleccionados = ingredientesSeleccionados.filter { $0 != "Pimiento" }
        }
        cincoSeleccionados()
    }
    
    @IBAction func pinaSeleccionada(value: Bool) {
        manejaContador(value)
        if value == true {
            self.ingredientesSeleccionados += ["Piña"]
        } else {
            self.ingredientesSeleccionados = ingredientesSeleccionados.filter { $0 != "Piña" }
        }
        cincoSeleccionados()
    }
    
    @IBAction func anchoaSeleccionada(value: Bool) {
       manejaContador(value)
        if value == true {
            self.ingredientesSeleccionados += ["Anchoa"]
        } else {
            self.ingredientesSeleccionados = ingredientesSeleccionados.filter { $0 != "Anchoa" }
        }
        cincoSeleccionados()
    }
    
    func manejaContador(newValue:Bool) {
        if newValue == true {
            self.ingredientesContador++
        } else {
            self.ingredientesContador--
        }
    }
    
    @IBAction func continuar() {
        let valorContexto = ValoresSeleccionados(t: tamanoSeleccionado, m: masaSeleccionada, q: quesoSeleccionado, i: ingredientesSeleccionados, pc: false)
        pushControllerWithName("IdentificadorConfirmar", context:valorContexto)
    }
    
    func cincoSeleccionados() {
        if ingredientesContador > 5 {
            //self.ingredientesSeleccionados.removeLast()
            //self.ingredientesContador--
            let cancel = WKAlertAction(title: "Cancel", style: WKAlertActionStyle.Cancel, handler: { () -> Void in
                self.ingredientesSeleccionados = [String]()
                self.ingredientesContador = 0
            })
            presentAlertControllerWithTitle("Attención", message: "Max 5 ingredientes", preferredStyle: WKAlertControllerStyle.Alert, actions: [cancel])
        }
    }

}
