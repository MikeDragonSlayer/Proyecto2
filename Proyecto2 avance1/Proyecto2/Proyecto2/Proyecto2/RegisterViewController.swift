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
    var auxiliar = [register]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let defaults = UserDefaults.standard
        
        if let dato1 = defaults.object(forKey: "dato1") as? String{
            Rname.text = dato1}
        if let dato2 = defaults.object(forKey: "dato2") as? String{
            RuserName.text = dato2}
        if let dato3 = defaults.object(forKey: "dato3") as? String{
            Rpassword.text = dato3}
        
        auxiliar.append(register(name: Rname.text!, userName: RuserName.text!, password: Rpassword.text!))
        }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "back"{
            
            let devolver = segue.destination as! ViewController
            devolver.usuario = auxiliar
        }
        
    
    
    }
   
    @IBAction func save(_ sender: UIButton) {
        
    }
    
    
}
