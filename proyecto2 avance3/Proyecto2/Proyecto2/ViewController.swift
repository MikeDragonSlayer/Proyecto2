//
//  ViewController.swift
//  Proyecto2
//
//  Created by Usuario invitado on 11/10/18.
//  Copyright © 2018 stma. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var logUser: UITextField!
    @IBOutlet weak var logPassword: UITextField!
    var usuario : [register] = []
    var textU = String ()
    var textN = String ()
    var textP = String ()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "vista3"{
            
            let enviar = segue.destination as! MainScreenViewController
            enviar.auxiliar = usuario
        }
    }
    
    @IBAction func enterButton(_ sender: UIButton) {
        if logUser.text == nil || logPassword == nil {
            print("datos invalidos")
    
        }
    }
    
    @IBAction func unsegueSecondView(unwindSegue: UIStoryboardSegue){
        
    }
    
    
    
    @IBAction func registerButton(_ sender: UIButton) {
        
    }
    
    
        
    
  
}
