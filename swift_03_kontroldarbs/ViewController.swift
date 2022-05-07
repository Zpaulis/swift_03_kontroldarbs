//
//  ViewController.swift
//  swift_03_kontroldarbs
//
//  Created by Paulis Zabarovskis on 25/04/2022.
//

import Foundation
import UIKit
//MARK: -Data from "outside" for CountryCardViewControler

struct CountryInfoOne {
    var countryName: String
    var countryFlag: String
    var countryPopulation: Int
    var countryArea: Double
    var countryDensity: Double {
        return Double(countryPopulation) / countryArea
    }
    init(countryName: String, countryFlag: String, countryPopulation: Int, countryArea: Double) {
        self.countryName = countryName
        self.countryFlag = countryFlag
        self.countryPopulation = countryPopulation
        self.countryArea = countryArea
    }
}
//MARK: - 1. UIViewController apakšklase - galvenā ekrāna ViewController
class ViewController: UIViewController {
    
    //MARK: - Outlets
    
    @IBOutlet weak var valstuSarakstsButton: UIButton!
    @IBOutlet weak var valstuKartinasButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    //MARK: - Buttons
    
    /* Šo saiti man izdevās nodefinēt Storyboardā
     @IBAction func valstuSarakstsButtonClicked(_ sender: Any) {
     self.performSegue(withIdentifier: "CountryListIdentifier", sender: self)
     }
     Abi "Button" darbojas, izveidojot saiti Storyboard. Ja mēģināju funkcionalitāti aprakstīt arī Swift kodā, nākamā scēna tika izsaukta divreiz.
     */
    
    //MARK: - Push data to secondary views
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "CountryListIdentifier" {
            if let ctrl = segue.destination as? CountryListViewControler {
                ctrl.countryListTitle = "Valstis Stack View"
                ctrl.valstis = ["Barbadosa" : "flag-of-Barbados", "Jamaika" : "flag-of-Jamaica", "Mozambika": "flag-of-Mozambique", "Nepāla" : "flag-of-Nepal", "Sanmarino" : "flag-of-San-Marino", "Solomona Salas" : "flag-of-Solomon-Islands"]
            }
        }
        if segue.identifier == "CountryCardIdentifier" {
            if let ctrl = segue.destination as? CountryCardViewControler {
                ctrl.card1 = CountryInfoOne(countryName: "Barbadosa", countryFlag: "flag-of-Barbados", countryPopulation: 287025, countryArea: 439.0)
            }
        }
    }
}

