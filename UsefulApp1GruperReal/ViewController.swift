//
//  ViewController.swift
//  UsefulApp1GruperReal
//
//  Created by MICHAEL GRUPER on 10/28/24.
//

class AppData{
    static var rbArr: [RBStats] = []
   static var encoder = JSONEncoder()
   static var decoder = JSONDecoder()
   static var defaults = UserDefaults.standard
}

class RBStats: Codable{
    var att: Int
    var yds: Double
    var avggme: Double
    var avgatt: Double
    var lng: Int
    var td: Int
    var fum: Int
    var lst: Int
    var name: String
    var num: Int
    
    init(att: Int, yds: Double, avggme: Double, avgatt: Double, lng: Int, td: Int, fum: Int, lst: Int, name: String, num: Int) {
        self.att = att
        self.yds = yds
        self.avggme = avggme
        self.avgatt = avgatt
        self.lng = lng
        self.td = td
        self.fum = fum
        self.lst = lst
        self.name = name
        self.num = num
    }
}


import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

