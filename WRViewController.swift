//
//  WRViewController.swift
//  UsefulApp1GruperReal
//
//  Created by MICHAEL GRUPER on 11/8/24.
//

import UIKit

class TempVarsWR{
    static var tds = 0
    static var yds = 0.0
    static var yac = 0.0
    static var tgts = 0
    static var recs = 0
    
}


class WRViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    @IBAction func tdsAction(_ sender: UIButton) {
        TempVarsWR.tds += 1
    }
    @IBAction func ydsAction(_ sender: UIButton) {
        let alertController = UIAlertController(title: "YDS", message: "Enter YDS. If you know total yards already, there is a button for that.", preferredStyle: .alert)

        alertController.addTextField { (textField) in
            textField.placeholder = "Name"
            
        }
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        
        let enterAction = UIAlertAction(title: "Enter", style: .default) { _ in
            
            if alertController.textFields![0].text != ""{
                var stuff = alertController.textFields![0].text!
                var stuff2 = Double(stuff) ?? 0
                TempVarsWR.yds += stuff2
            }

        }

        alertController.addAction(cancelAction)
        alertController.addAction(enterAction)

        present(alertController, animated: true, completion: nil)
    }
    
    
}
