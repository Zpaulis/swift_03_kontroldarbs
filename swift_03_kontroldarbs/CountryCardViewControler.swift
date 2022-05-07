//
//  CountryCardViewControler.swift
//  swift_03_kontroldarbs
//
//  Created by Paulis Zabarovskis on 05/05/2022.
//

import Foundation
import UIKit

//MARK: - 3. UIViewController apakšklase - CountryCardView ekrāna ViewController
class CountryCardViewControler: UIViewController {
    
    //MARK: -Input parameters
    
    var card1 = CountryInfoOne(countryName: "Latvija", countryFlag: "flag-of-Latvia", countryPopulation: 1902000, countryArea: 64589.0)
    
    //MARK: - Outlets
    
    @IBOutlet weak var countryCardTytleLabel: UILabel!
    @IBOutlet weak var countryFlagImageView: UIImageView!
    @IBOutlet weak var countryPopulationLabel: UILabel!
    @IBOutlet weak var countryAreaLabel: UILabel!
    @IBOutlet weak var countryDensityLabel: UILabel!
    
    
//MARK: - Fill scene
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.countryCardTytleLabel.text = card1.countryName
        self.countryFlagImageView.image = UIImage.init(named: card1.countryFlag)
        self.countryPopulationLabel.text = "Iedzīvotāju skaits - " + String(card1.countryPopulation)
        self.countryAreaLabel.text = "Platība - " + String(card1.countryArea)
        self.countryDensityLabel.text = "Iedzīvotāju blīvums - " + String(format: "%.2f", Double(card1.countryPopulation) / card1.countryArea)
    }
}


