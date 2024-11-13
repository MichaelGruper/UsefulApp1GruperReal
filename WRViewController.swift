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
    static var name = ""
    static var num = 0
    
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
            textField.placeholder = "Yards"
            
        }
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        
        let enterAction = UIAlertAction(title: "Enter", style: .default) { _ in
            
            if alertController.textFields![0].text != ""{
                var stuff = alertController.textFields![0].text!
                var stuff2 = Double(stuff) ?? 0
                TempVarsWR.yds += stuff2
                //print(TempVarsWR.yds)
            }

        }

        alertController.addAction(cancelAction)
        alertController.addAction(enterAction)

        present(alertController, animated: true, completion: nil)
    }
    
    @IBAction func ttlYDSAction(_ sender: UIButton) {
        let alertController = UIAlertController(title: "Total YDS", message: "Enter Total Yards. There is also a button to add yards by play.", preferredStyle: .alert)

        alertController.addTextField { (textField) in
            textField.placeholder = "Total Yards"
            
        }
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        
        let enterAction = UIAlertAction(title: "Enter", style: .default) { _ in
            
            if alertController.textFields![0].text != ""{
                var stuff = alertController.textFields![0].text!
                var stuff2 = Double(stuff) ?? 0
                TempVarsWR.yds = stuff2
                //print(TempVarsWR.yds)
            }

        }

        alertController.addAction(cancelAction)
        alertController.addAction(enterAction)

        present(alertController, animated: true, completion: nil)
    }
    
    @IBAction func yacAction(_ sender: UIButton) {
        let alertController = UIAlertController(title: "YAC", message: "Enter YAC (Yards after Catch)", preferredStyle: .alert)

        alertController.addTextField { (textField) in
            textField.placeholder = "Yards After Catch"
            
        }
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        
        let enterAction = UIAlertAction(title: "Enter", style: .default) { _ in
            
            if alertController.textFields![0].text != ""{
                var stuff = alertController.textFields![0].text!
                var stuff2 = Double(stuff) ?? 0
                TempVarsWR.yac += stuff2
                //print(TempVarsWR.yac)
            }

        }

        alertController.addAction(cancelAction)
        alertController.addAction(enterAction)

        present(alertController, animated: true, completion: nil)
    }
    
    @IBAction func tgtAction(_ sender: UIButton) {
        TempVarsWR.tgts += 1
    }
    @IBAction func recAction(_ sender: UIButton) {
        TempVarsWR.recs += 1
    }
    @IBAction func nameAction(_ sender: UIButton) {
        let alertController = UIAlertController(title: "WR Name", message: "Enter WR Name", preferredStyle: .alert)

        alertController.addTextField { (textField) in
            textField.placeholder = "Name"
            
        }
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        
        let enterAction = UIAlertAction(title: "Enter", style: .default) { _ in
            
            if alertController.textFields![0].text != ""{
                TempVarsWR.name = alertController.textFields![0].text!
            }

        }

        alertController.addAction(cancelAction)
        alertController.addAction(enterAction)

        present(alertController, animated: true, completion: nil)
    }
    @IBAction func numberAction(_ sender: UIButton) {
        //print("Working")
        let alertController = UIAlertController(title: "WR #", message: "Enter WR Number", preferredStyle: .alert)

        alertController.addTextField { (textField) in
            textField.placeholder = "WR Number"
            
        }
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        
        let enterAction = UIAlertAction(title: "Enter", style: .default) { _ in
            
            if alertController.textFields![0].text != ""{
                var stuff = alertController.textFields![0].text!
                var stuff2 = Int(stuff) ?? 0
                TempVarsWR.num = stuff2
                //print(TempVarsWR.num)
            }
        }
        alertController.addAction(cancelAction)
        alertController.addAction(enterAction)

        present(alertController, animated: true, completion: nil)
    }
    
    
    @IBAction func saveAction(_ sender: UIButton) {
        let alertController = UIAlertController(title: "Confirm", message: "Are you sure you wish to save? This will reset all entered stats and save what has been input.", preferredStyle: .alert)

        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        
        let enterAction = UIAlertAction(title: "Enter", style: .default) { _ in
            
            AppData.rbArr.append(RBStats(att: TempVarsRB.att, yds: TempVarsRB.yds, avggme: TempVarsRB.avggme, avgatt: TempVarsRB.avgatt, lng: TempVarsRB.lng, td: TempVarsRB.td, fum: TempVarsRB.fum, lst: TempVarsRB.lst, name: TempVarsRB.name, num: TempVarsRB.num))
            
           if let wr = try?
                AppData.encoder.encode(AppData.wrArr){
               AppData.defaults.set(wr, forKey: "wrArr")
            }
            
            
            TempVarsWR.tgts = 0
            TempVarsWR.yds = 0
            TempVarsWR.yac = 0
            TempVarsWR.tds = 0
            TempVarsWR.recs = 0
            TempVarsWR.name = ""
            TempVarsWR.num = 0
            //print(AppData.rbArr)
        }

        alertController.addAction(cancelAction)
        alertController.addAction(enterAction)

        present(alertController, animated: true, completion: nil)
    }
}
