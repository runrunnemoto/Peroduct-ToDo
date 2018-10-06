//
//  ListTableViewController.swift
//  Peroduct ToDo
//
//  Created by 根本翔 on 2018/10/04.
//  Copyright © 2018年 根本翔. All rights reserved.
//

import UIKit

class ListTableViewController: UITableViewController {
    
    @IBOutlet var plus: UIBarButtonItem!
    
    var ToDos: [String] = []
    let saveData = UserDefaults.standard

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(UINib(nibName: "ListTableViewCell", bundle: nil),
                           forCellReuseIdentifier: "Cell")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        if saveData.array(forKey: "ToDo") != nil {
            ToDos = saveData.array(forKey: "ToDo") as! [String]
            print(ToDos)
        }
        tableView.reloadData()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return ToDos.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell" , for:indexPath)
            as! ListTableViewCell
        
        let IndexPath = ToDos[indexPath.row]
        
        cell.ToDoLabel.text = IndexPath
        
        return cell
    }
    
    @IBAction func returnToMe(segue: UIStoryboardSegue) { }
    
    @IBAction func addToDo() {
        performSegue(withIdentifier: "toNext", sender: nil)
    }
}
