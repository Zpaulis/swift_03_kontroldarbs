//
//  ViewController.swift
//  swift_03_kontroldarbs
//
//  Created by Paulis Zabarovskis on 25/04/2022.
//

import UIKit

class ViewController: UIViewController {

   //MARK: -Outlets
    
    @IBOutlet weak var valstuSarakstsButton: UIButton!
    @IBOutlet weak var valstuKartinasButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    //MARK: -Buttons
    
    @IBAction func valstuSarakstsButtonClicked(_ sender: Any) {
            self.performSegue(withIdentifier: "CountryListIdentifier", sender: self)
        }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if segue.identifier == "CountryListIdentifier" {
                if let ctrl = segue.destination as? CountryListViewControler {
                    ctrl.countryListTitle = "Valstis Stack View"
                    ctrl.valstis = ["Barbadosa" : "flag-of-Barbados", "Jamaika" : "flag-of-Jamaica", "Mozambika": "flag-of-Mozambique", "Nepāla" : "flag-of-Nepal", "Sanmarino" : "flag-of-San-Marino", "Solomona Salas" : "flag-of-Solomon-Islands"]
                }
            }
        }
}

