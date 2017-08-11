//
//  ViewController.swift
//  ExemploTableView
//
//  Created by Usuário Convidado on 04/08/17.
//  Copyright © 2017 David. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var animal:[String] = ["Urso", "Leão", "Rinoceronte", "Girafa", "Elefante"]
    var foto = ["urso.png", "leao", "rino", "girafa", "ele.png"]    // .png não é necessário
    @IBOutlet weak var minhaTabela: UITableView!
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animal.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celula = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        celula.textLabel?.text = animal[indexPath.row]
        celula.imageView?.image = UIImage(named: foto[indexPath.row])
        celula.detailTextLabel?.text = "bla bla bla"
        celula.accessoryType = .disclosureIndicator
        
        return celula
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let alerta = UIAlertController(
            title: "Aviso",
            message: "\(animal[indexPath.row]) é um magnífico representante da Mata Atlântica",
            preferredStyle: UIAlertControllerStyle.alert)
        alerta.addAction(UIAlertAction(
            title: "OK",
            style: UIAlertActionStyle.default,
            handler: nil))
        present(alerta, animated: true, completion: nil)
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let cabec = UIImageView(image: #imageLiteral(resourceName: "cabecalho"))
        return cabec
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 75
    }
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let roda = UIImageView(image: #imageLiteral(resourceName: "rodape"))
        return roda
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 30
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        minhaTabela.dataSource = self
        minhaTabela.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
