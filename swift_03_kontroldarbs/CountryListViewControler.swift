//
//  CountryListViewControler.swift
//  swift_03_kontroldarbs
//
//  Created by Paulis Zabarovskis on 26/04/2022.
//

import Foundation
import UIKit

class CountryListViewControler: UIViewController {
    
    //MARK: -Input parametrs
    var valstis: [String: String] = ["valsts": "karogs"]
    var countryListTitle: String = "Valstu saraksts"
    
    //MARK: -Outlets
    
    @IBOutlet weak var countryListTitleLabel: UILabel!
    
    @IBOutlet weak var valsts1rinda: UILabel!
    @IBOutlet weak var valsts2rinda: UILabel!
    @IBOutlet weak var valsts3rinda: UILabel!
    @IBOutlet weak var valsts4rinda: UILabel!
    @IBOutlet weak var valsts5rinda: UILabel!
    @IBOutlet weak var valsts6rinda: UILabel!
    
    @IBOutlet weak var valsts1karogs: UIImageView!
    @IBOutlet weak var valsts2karogs: UIImageView!
    @IBOutlet weak var valsts3karogs: UIImageView!
    @IBOutlet weak var valsts4karogs: UIImageView!
    @IBOutlet weak var valsts5karogs: UIImageView!
    @IBOutlet weak var valsts6karogs: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Neracionāla koda paraugs
        self.valsts1rinda.text = Array(valstis)[0].key
        self.valsts1karogs.image = UIImage.init(named: Array(valstis)[0].value)
        
        
        
        
        
    }
    
    
}


