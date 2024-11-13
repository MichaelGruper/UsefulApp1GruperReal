//
//  PlayersViewController.swift
//  UsefulApp1GruperReal
//
//  Created by MICHAEL GRUPER on 11/4/24.
//

import UIKit

class PlayersViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var tableViewOutlet: UITableView!
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //print(AppData.rbArr.count)
        return AppData.rbArr.count + AppData.wrArr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell") as! CrazyCell
        
        for _ in AppData.rbArr{
            cell.nameOutlet.text = AppData.rbArr[indexPath.row].name
            cell.positionOutlet.text = "RB"
            cell.numberOutlet.text = "\(AppData.rbArr[indexPath.row].num)"
        }
        for _ in AppData.wrArr{
            cell.nameOutlet.text = AppData.wrArr[indexPath.row].name
            cell.positionOutlet.text = "WR"
            cell.numberOutlet.text = "\(AppData.wrArr[indexPath.row].num)"
        }
        return cell
    }
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewOutlet.delegate = self
        tableViewOutlet.dataSource = self
        // Do any additional setup after loading the view.
    }
    

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        AppData.clickedOn = AppData.rbArr[indexPath.row]
        performSegue(withIdentifier: "statsSegue", sender: nil)
    }

}

