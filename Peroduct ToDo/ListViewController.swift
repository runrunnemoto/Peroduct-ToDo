//
//  ListViewController.swift
//  Peroduct ToDo
//
//  Created by 根本翔 on 2018/09/27.
//  Copyright © 2018年 根本翔. All rights reserved.
//

import UIKit

class ListViewController : UIViewController,UITableViewDataSource {
    
    @IBOutlet weak var table: UITableView!
    @IBOutlet weak var ToDocell: UITableViewCell!
    
    var ToDos: [String]
    let saveData = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UINib(nibName: "ListViewConroller", bundle: nil),
                           forCellReuseIdentifier: "cell")
    }
        
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ToDos.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let Cells : UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "Cells" , for: indexPath)
        ToDocell.textLabel!.text = ToDos[indexPath.row]
        return ToDocell
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
