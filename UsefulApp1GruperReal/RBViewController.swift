//
//  RBViewController.swift
//  UsefulApp1GruperReal
//
//  Created by MICHAEL GRUPER on 10/29/24.
//

import UIKit

class TempVarsRB{
    static var att = 0
    static var name = ""
   static var num = 0
   static var yds = 0.0
    static var avggme = 0.0
    static var avgatt = 0.0
    static var lng = 0
    static var lst = 0
    static var fum = 0
    static var td = 0
}

class RBViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        //AppData.defaults.set(AppData.rbArr, forKey: "rbArr")
        }
    
    override func viewDidAppear(_ animated: Bool) {
        
    }
    
    @IBAction func rbNameAction(_ sender: UIButton) {
        var name = ""
        let alertController = UIAlertController(title: "RBName", message: "Enter Name", preferredStyle: .alert)

        alertController.addTextField { (textField) in
            textField.placeholder = "Name"
            
        }
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        
        let enterAction = UIAlertAction(title: "Enter", style: .default) { _ in
            
            if alertController.textFields![0].text != ""{
                name = alertController.textFields![0].text!
                TempVarsRB.name = name
                //print(TempVars.name)
            }

        }

        alertController.addAction(cancelAction)
        alertController.addAction(enterAction)

        present(alertController, animated: true, completion: nil)
    }
    
    @IBAction func numAction(_ sender: UIButton) {
        var num = 0
        let alertController = UIAlertController(title: "RBNum", message: "Enter Num", preferredStyle: .alert)

        alertController.addTextField { (textField) in
            textField.placeholder = "Num"
            
        }
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        
        let enterAction = UIAlertAction(title: "Enter", style: .default) { _ in
            
            if alertController.textFields![0].text != ""{
                num = Int(alertController.textFields![0].text!)!
                TempVarsRB.num = num
                //print(TempVars.num)
            }

        }

        alertController.addAction(cancelAction)
        alertController.addAction(enterAction)

        present(alertController, animated: true, completion: nil)
        
    }
    
    @IBAction func attAction(_ sender: UIButton) {
        TempVarsRB.att += 1
    }
    @IBAction func lstAction(_ sender: UIButton) {
        TempVarsRB.lst += 1
    }
    @IBAction func fumAction(_ sender: UIButton) {
        TempVarsRB.fum += 1
    }
    @IBAction func tdAction(_ sender: UIButton) {
        TempVarsRB.td += 1
    }
    @IBAction func ydsAction(_ sender: UIButton) {
        var yds = 0.0
        let alertController = UIAlertController(title: "YDS", message: "Enter YDS one play at a time. There is also a Total YDS button if you already know how many yards RB ran.", preferredStyle: .alert)

        alertController.addTextField { (textField) in
            textField.placeholder = "YDS"
            
        }
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        
        let enterAction = UIAlertAction(title: "Enter", style: .default) { _ in
            
            if alertController.textFields![0].text != ""{
                yds += Double(alertController.textFields![0].text!)!
                TempVarsRB.yds = yds
                //print(TempVars.yds)
            }

        }

        alertController.addAction(cancelAction)
        alertController.addAction(enterAction)

        present(alertController, animated: true, completion: nil)
    }
    @IBAction func ttlydsAction(_ sender: UIButton) {
        var yds = 0.0
        let alertController = UIAlertController(title: "Total YDS", message: "Enter Total YDS", preferredStyle: .alert)

        alertController.addTextField { (textField) in
            textField.placeholder = "Total YDS"
            
        }
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        
        let enterAction = UIAlertAction(title: "Enter", style: .default) { _ in
            
            if alertController.textFields![0].text != ""{
                yds = Double(alertController.textFields![0].text!)!
                TempVarsRB.yds = yds
                //print(TempVars.yds)
            }

        }

        alertController.addAction(cancelAction)
        alertController.addAction(enterAction)

        present(alertController, animated: true, completion: nil)
    }
    @IBAction func lngAction(_ sender: UIButton) {
        var lng = 0
        let alertController = UIAlertController(title: "LNG", message: "Enter Longest Run Attempt as the RB runs further", preferredStyle: .alert)

        alertController.addTextField { (textField) in
            textField.placeholder = "LNG"
            
        }
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        
        let enterAction = UIAlertAction(title: "Enter", style: .default) { _ in
            
            if alertController.textFields![0].text != ""{
                lng = Int(alertController.textFields![0].text!)!
                TempVarsRB.lng = lng
                //print(TempVars.yds)
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
            
           if let rb = try? AppData.encoder.encode(AppData.rbArr){
               AppData.defaults.set(rb, forKey: "rbArr")
            }
            
            
            TempVarsRB.att = 0
            TempVarsRB.yds = 0
            TempVarsRB.lng = 0
            TempVarsRB.td = 0
            TempVarsRB.fum = 0
            TempVarsRB.lst = 0
            TempVarsRB.name = ""
            TempVarsRB.num = 0
            //print(AppData.rbArr)
        }

        alertController.addAction(cancelAction)
        alertController.addAction(enterAction)

        present(alertController, animated: true, completion: nil)
    }
}
