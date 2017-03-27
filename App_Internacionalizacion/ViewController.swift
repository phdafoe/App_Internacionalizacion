//
//  ViewController.swift
//  App_Internacionalizacion
//
//  Created by formador on 27/3/17.
//  Copyright © 2017 formador. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: - IBOutlets
    @IBOutlet weak var myTextoLBL : UILabel!
    @IBOutlet weak var myNumeroLBL : UILabel!
    @IBOutlet weak var myMonedaLBL : UILabel!
    @IBOutlet weak var myFechaLBL : UILabel!
    @IBOutlet weak var myImageView : UIImageView!
    
    //MARK: - LIFE VC
    override func viewDidLoad() {
        super.viewDidLoad()
        dameDatos()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        muestraAlertVCIdiom()
    }
    
    //MARK: - Utils
    func dameDatos(){
        myTextoLBL.text = NSLocalizedString("GOOD_MORNING", comment: "")
        myNumeroLBL.text = "\(9.9999)"
        myMonedaLBL.text = "\(50.0001)"
        myFechaLBL.text = "\(Date())"
        myImageView.image = UIImage(named: "hello.png")
    }
    
    func muestraAlertVCIdiom(){
        let alertVC = UIAlertController(title: NSLocalizedString("TITLE_DATA", comment: ""), message: NSLocalizedString("MESSAGE_DATA", comment: ""), preferredStyle: .alert)
        alertVC.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        present(alertVC, animated: true, completion: nil)
    }
    
    
    
    
    
    
    
    
    
    
    
}

