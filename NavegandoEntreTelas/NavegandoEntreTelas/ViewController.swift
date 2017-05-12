//
//  ViewController.swift
//  NavegandoEntreTelas
//
//  Created by Usuário Convidado on 12/05/17.
//  Copyright © 2017 David Cardoso. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBAction func fechar(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

