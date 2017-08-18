//
//  DetalhesViewController.swift
//  MoviesTableView
//
//  Created by Usuário Convidado on 18/08/17.
//  Copyright © 2017 darthcabs. All rights reserved.
//

import UIKit

class DetalhesViewController: UIViewController {
    var titulo: String = ""
    var data: String = ""
    var poster: UIImage? = nil
    
    @IBOutlet weak var lblTitulo: UILabel!
    @IBOutlet weak var lblAno: UILabel!
    @IBOutlet weak var imgPoster: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()

        lblTitulo.text = self.titulo
        lblAno.text = self.data
        imgPoster.image = self.poster
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
