//
//  ColorsTableViewController.swift
//  Colors-Table-view
//
//  Created by Bryce Ligaya on 3/16/18.
//  Copyright © 2018 Bryce Ligaya. All rights reserved.
//

import UIKit

class ColorsTableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

   // var ColorsTable = ["red", "orange", "yellow", "green", "blue", "purple", "brown"]
    
    var ColorsTable = [color(name: "red", uiColor: UIColor.red),
    color(name: "orange", uiColor: UIColor.orange),
    color(name: "yellow", uiColor: UIColor.yellow),
    color(name: "green", uiColor: UIColor.green),
    color(name: "blue", uiColor: UIColor.blue),
    color(name: "purple", uiColor: UIColor.purple),
    color(name: "brown", uiColor: UIColor.brown)]
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ColorsTable.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CellColour", for: indexPath)
        cell.textLabel?.text = ColorsTable[indexPath.row].name
        cell.backgroundColor = ColorsTable[indexPath.row].uiColor
        return cell
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
