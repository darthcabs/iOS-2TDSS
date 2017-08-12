//
//  Aviso.swift
//  TableViewController_aula15
//
//  Created by Usuário Convidado on 11/08/17.
//  Copyright © 2017 darthcabs. All rights reserved.
//

import UIKit

class Aviso: NSObject {

    static func exibirMsg(msg:String, sender:AnyObject){
        let alerta = UIAlertController(
            title: "Aviso",
            message: msg,
            preferredStyle: UIAlertControllerStyle.alert)
        alerta.addAction(UIAlertAction(
            title: "OK",
            style: UIAlertActionStyle.default,
            handler: nil))
        
        sender.present(alerta, animated:true, completion:nil)
    }
}
