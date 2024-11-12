//
//  StatsViewController.swift
//  UsefulApp1GruperReal
//
//  Created by MICHAEL GRUPER on 11/6/24.
//

import UIKit

class StatsViewController: UIViewController {
    @IBOutlet weak var nameLOutlet: UILabel!
    @IBOutlet weak var numberLOutlet: UILabel!
    @IBOutlet weak var yardsLOutlet: UILabel!
    @IBOutlet weak var fumblesLOutlet: UILabel!
    @IBOutlet weak var touchdownsLOutlet: UILabel!
    @IBOutlet weak var lostLOutlet: UILabel!
    @IBOutlet weak var longLOutlet: UILabel!
    @IBOutlet weak var attemptLOutlet: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func viewDidAppear(_ animated: Bool) {
        nameLOutlet.text = "Name: \(AppData.clickedOn.name)"
        numberLOutlet.text = "#: \(AppData.clickedOn.num)"
        yardsLOutlet.text = "YDS: \(AppData.clickedOn.yds)"
        fumblesLOutlet.text = "FUM: \(AppData.clickedOn.fum)"
        touchdownsLOutlet.text = "TDS: \(AppData.clickedOn.td)"
        lostLOutlet.text = "LST: \(AppData.clickedOn.lst)"
        longLOutlet.text = "LNG: \(AppData.clickedOn.lng)"
        attemptLOutlet.text = "ATT: \(AppData.clickedOn.att)"
    }

    
}
