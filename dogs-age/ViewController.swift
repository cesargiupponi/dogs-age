//
//  ViewController.swift
//  dogs-age
//
//  Created by Cesar Giupponi Paiva on 06/04/19.
//  Copyright © 2019 Cesar Paiva. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    @IBOutlet weak var textFieldAge: UITextField!
    @IBOutlet weak var labelResult: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func discoverAge(_ sender: Any) {
        if let dogAge = self.textFieldAge.text, !dogAge.isEmpty {
            self.setLabelResult(humanAge: self.calculateHumanAge(dogAge: dogAge))
            self.clearTextField()
        } else {
            let alertController = UIAlertController(title: "Campo em branco", message: "Informe a idade do cachorro", preferredStyle: .alert)
            alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.present(alertController, animated: true)
        }
    }
    
    func calculateHumanAge(dogAge: String) -> Int {
        return Int(self.textFieldAge.text!)! * 7
    }
    
    func setLabelResult(humanAge: Int) {
        self.labelResult.text = "A idade do cachorro é: " + String(humanAge)
    }
    
    func clearTextField() {
        self.textFieldAge.text?.removeAll()
    }
}

