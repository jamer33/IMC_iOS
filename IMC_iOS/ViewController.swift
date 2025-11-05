//
//  ViewController.swift
//  IMC_iOS
//
//  Created by Mananas on 3/11/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var pesoLabel: UILabel!
    @IBOutlet weak var alturaLabel: UILabel!
    @IBOutlet weak var imcLabel: UILabel!
    
    @IBOutlet weak var pesoControl: UIStepper!
    @IBOutlet weak var alturaControl: UISlider!
    
    var peso : Int = 70
    var altura : Int = 160
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        pesoLabel.text = String(peso)  + " Kg"
        alturaLabel.text = String(altura) + " Cms"
        imcLabel.text = "-"
        pesoControl.value = Double(peso)
        alturaControl.value = Float(altura)
        actualizaIMC()

    }

    @IBAction func pesoSteper(_ sender: UIStepper) {
        peso = Int(sender.value)
        pesoLabel.text = String(peso) + " Kg"
        actualizaIMC()
    }
    
    @IBAction func alturaSlider(_ sender: UISlider) {
        altura = Int(sender.value)
        alturaLabel.text = String(altura) + " Cms"
        actualizaIMC()
    }
    
    func calcularIMC() -> Double {
        let imc: Double = Double(peso) / pow(Double(altura)/100, 2)
        return imc
    }
    
    func actualizaIMC() {
        imcLabel.text = String(format: "%.2f", calcularIMC())
    }
}
    
