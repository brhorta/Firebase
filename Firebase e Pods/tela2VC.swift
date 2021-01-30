//
//  tela2VC.swift
//  Firebase e Pods
//
//  Created by Bruno Horta on 23/1/21.
//

import UIKit
import Firebase

class tela2VC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //try! Auth.auth().signOut()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func bttLogout(_ sender: UIButton) {
        
        try! Auth.auth().signOut()
        dismiss(animated: true, completion: nil)
        
    }
    
    @IBAction func bttSenha(_ sender: UIButton) {
        
        Auth.auth().sendPasswordReset(withEmail: "brhorta@gmail.com", completion: nil)
        
    }
    
}
