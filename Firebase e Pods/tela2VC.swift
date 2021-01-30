//
//  tela2VC.swift
//  Firebase e Pods
//
//  Created by Bruno Horta on 23/1/21.
//

import UIKit
import Firebase

class tela2VC: UIViewController {
    @IBOutlet weak var mensagemLabel: UILabel!
    
    override func viewDidLoad() {
        loadMessage()
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
    
    
    func loadMessage(){
        
        mensagemLabel.text = Auth.auth().currentUser?.email
//        var email = Auth.auth().currentUser?.email!
//        if var nome = Auth.auth().currentUser?.displayName {
//            nome = nome
//        }
//
//        if Auth.auth().currentUser?.displayName != nil {
//            mensagemLabel.text = nome ?? ""
//        }else {
//            mensagemLabel.text! = email ?? ""
//
//        }
//
    }
}
