//
//  ViewController.swift
//  user defult
//
//  Created by R94 on 11/02/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var passwordTextfild: UITextField!
    @IBOutlet weak var passwordLabel: UILabel!
    @IBOutlet weak var userNameTextfild: UITextField!
    @IBOutlet weak var userNameLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let abc = segue.destination as! ViewController1
        abc.a1 = userNameTextfild.text!
        abc.a2 = passwordTextfild.text!
    }
    
    @IBAction func logInBUtton(_ sender: UIButton)
    {
        showalert()
    }
    func showalert()
    {
        let alert = UIAlertController(title: "save", message: "save", preferredStyle: .alert)
        alert.addAction(UIAlertAction.init(title: "save", style: .default, handler: { _ in
            UserDefaults.standard.set(self.userNameTextfild.text!, forKey: "userName")
            UserDefaults.standard.set(self.passwordTextfild.text!, forKey: "passWord")
            self.performSegue(withIdentifier:"cell" , sender: self)
        }))
        alert.addAction(UIAlertAction.init(title: "cancel", style: .destructive, handler: nil))
        present(alert, animated: true, completion: nil)

    }
    

}

