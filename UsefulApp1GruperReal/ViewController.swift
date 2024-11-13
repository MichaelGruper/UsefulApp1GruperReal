//
//  ViewController.swift
//  UsefulApp1GruperReal
//
//  Created by MICHAEL GRUPER on 10/28/24.
//

class AppData{
    static var rbArr: [RBStats] = []
    static var wrArr: [WRStats] = []
   static var encoder = JSONEncoder()
   static var decoder = JSONDecoder()
   static var defaults = UserDefaults.standard
    static var clickedOn: RBStats!
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

class WRStats: Codable{
    var td: Int
    var yds: Double
    var yac: Double
    var tgt: Int
    var rec: Int
    var name: String
    var num: Int
    
    init(td: Int, yds: Double, yac: Double, tgt: Int, rec: Int, name: String, num: Int) {
        self.td = td
        self.yds = yds
        self.yac = yac
        self.tgt = tgt
        self.rec = rec
        self.name = name
        self.num = num
    }
}


import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //AppData.defaults.set(AppData.wrArr, forKey: "wrArr")
        //AppData.defaults.set(AppData.rbArr, forKey: "rbArr")
        if let rb = AppData.defaults.data(forKey: "rbArr"){
            if let inRB = try? AppData.decoder.decode([RBStats].self, from: rb){
                AppData.rbArr = inRB
                for r in AppData.rbArr{
                    print(r.name)
                }
            }
        }
        if let wr = AppData.defaults.data(forKey: "wrArr"){
            if let inWR = try? AppData.decoder.decode([WRStats].self, from: wr){
                AppData.wrArr = inWR
                for w in AppData.wrArr{
                    print(w.name)
                }
            }
        }
        // Do any additional setup after loading the view.
    }


}

