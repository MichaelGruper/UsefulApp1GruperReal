//
//  RBViewController.swift
//  UsefulApp1GruperReal
//
//  Created by MICHAEL GRUPER on 10/29/24.
//

import UIKit

class TempVars{
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
                TempVars.name = name
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
                TempVars.num = num
                //print(TempVars.num)
            }

        }

        alertController.addAction(cancelAction)
        alertController.addAction(enterAction)

        present(alertController, animated: true, completion: nil)
        
    }
    
    @IBAction func attAction(_ sender: UIButton) {
        TempVars.att += 1
    }
    @IBAction func lstAction(_ sender: UIButton) {
        TempVars.lst += 1
    }
    @IBAction func fumAction(_ sender: UIButton) {
        TempVars.fum += 1
    }
    @IBAction func tdAction(_ sender: UIButton) {
        TempVars.td += 1
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
                TempVars.yds = yds
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
                TempVars.yds = yds
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
                TempVars.lng = lng
                //print(TempVars.yds)
            }

        }

        alertController.addAction(cancelAction)
        alertController.addAction(enterAction)

        present(alertController, animated: true, completion: nil)
    }
}
