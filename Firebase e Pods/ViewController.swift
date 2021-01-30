//
//  ViewController.swift
//  Firebase e Pods
//
//  Created by Bruno Horta on 23/1/21.
//

import UIKit
import Firebase

class ViewController: UIViewController {

    @IBOutlet weak var nomeTextField: UITextField!
    @IBOutlet weak var senhaTextField: UITextField!
    
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        print(Auth.auth().currentUser?.email) //pegar o email do Usuario
        print(Auth.auth().currentUser?.uid)
        
        
        
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        if Auth.auth().currentUser != nil {
            self.performSegue(withIdentifier: "tela2", sender: nil)
            
        }
    }
    
    
    @IBAction func bttCriar(_ sender: UIButton) {
        let login = nomeTextField.text!
        let senha = senhaTextField.text!
        
      
        
        Auth.auth().createUser(withEmail: login, password: senha) { (result, error) in
            guard let result = result else {
                print(error?.localizedDescription)
                return
            }
            
            print(result.user.uid)
        }
        
    }
    
    
    
    @IBAction func bttLoginn(_ sender: UIButton) {
        
        let login = nomeTextField.text!
        let senha = senhaTextField.text!
        
        Auth.auth().signIn(withEmail: login, password: senha) { (result, error) in
            guard let result = result else {
                print(error?.localizedDescription)
                return
            }
            print(result.user.uid)
            if result.user.uid != nil {
                self.performSegue(withIdentifier: "tela2", sender: nil)
            }
            
            
        }
        
        
    }
    
}

