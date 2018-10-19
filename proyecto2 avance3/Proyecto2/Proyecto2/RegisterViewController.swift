//
//  RegisterViewController.swift
//  Proyecto2
//
//  Created by Usuario invitado on 11/10/18.
//  Copyright © 2018 stma. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {
    @IBOutlet weak var Rname: UITextField!
    @IBOutlet weak var RuserName: UITextField!
    @IBOutlet weak var Rpassword: UITextField!
    var auxiliar : [register] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let defaults = UserDefaults.standard
        
        var dato1 = defaults.object(forKey: "dato1") as? String
            dato1 = Rname.text
        var dato2 = defaults.object(forKey: "dato2") as? String
           dato2 = RuserName.text
        var dato3 = defaults.object(forKey: "dato3") as? String
           dato3 = Rpassword.text
        auxiliar.append(register(name: Rname.text!,userName: RuserName.text!, password: Rpassword.text!))
        
        }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "back"{
            
            let devolver = segue.destination as! ViewController
            devolver.usuario = auxiliar
        }
    
    }
   
    @IBAction func save(_ sender: UIButton) {
        
        auxiliar.append(register(name: Rname.text!,userName: RuserName.text!, password: Rpassword.text!))
        print(auxiliar)
        let defaults = UserDefaults.standard
        defaults.set("", forKey: "dato1")
        defaults.set("", forKey: "dato2")
        defaults.set("", forKey: "dato3")
        
    }
    
    
}
