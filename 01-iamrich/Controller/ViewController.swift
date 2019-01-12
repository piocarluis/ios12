//
//  ViewController.swift
//  01-iamrich
//
//  Created by Luis Adrian Carpio Toro on 1/1/19.
//  Copyright © 2019 Luis Adrian Carpio Toro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //PROPERTYS
    @IBOutlet weak var labeTitle: UILabel!
    
    @IBOutlet weak var imageViewDiamond: UIImageView!
    
    @IBOutlet weak var buttonPush: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    //METHODS
    @IBAction func buttonPressed(_ sender: UIButton) {
        /*self.labeTitle.text = "Ahora eres rico!"
        
        self.labeTitle.textColor = UIColor.blue
        self.labeTitle.font = UIFont.systemFont(ofSize: 24.0)
        self.imageViewDiamond.image = UIImage.init(named: "diamond")
        self.buttonPush.setTitle("Pulsado", for: UIControl.State.normal)*/
        let controller = UIAlertController(title: "I am Rich", message: """
                    I am Rich,
                    I deserve it.
                    I am good,
                    healthy and sucessfull
                    """, preferredStyle: .actionSheet)
        
        let action = UIAlertAction(title: "Aceptar", style: UIAlertAction.Style.default) { (action) in
            print("He pulsado Aceptar")
            let controller2 = UIAlertController(title: "Gracias", message: "Te descontamos $1000", preferredStyle: .alert)
            let action4 = UIAlertAction(title: "Aceptar", style: UIAlertAction.Style.default, handler: nil)
            controller2.addAction(action4)
            self.show(controller2, sender: nil)
        }
        
        controller.addAction(action)
        
        let action2 = UIAlertAction(title: "Borrar", style: UIAlertAction.Style.destructive, handler: nil)
        
        controller.addAction(action2)
        
        let action3 = UIAlertAction(title: "Cancelar", style: UIAlertAction.Style.cancel, handler: nil)
        
        controller.addAction(action3)
        
        self.show(controller, sender: nil)
        
                        }
    

}

