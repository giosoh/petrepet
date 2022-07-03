//
//  ViewController.swift
//  Pet Repet
//
//  Created by Giovanna Paz on 09/05/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        bGround.image = UIImage(named: "Background")
        bolaUm.image = UIImage(named: "Ellipse 2")
        bolaDois.image = UIImage(named: "Ellipse 2")
    }

    @IBOutlet weak var bGround: UIImageView!
    
    @IBOutlet weak var bolaUm: UIImageView!
    @IBOutlet weak var bolaDois: UIImageView!
    
}

