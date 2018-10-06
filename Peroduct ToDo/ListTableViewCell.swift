//
//  ListTableViewCell.swift
//  Peroduct ToDo
//
//  Created by 根本翔 on 2018/10/04.
//  Copyright © 2018年 根本翔. All rights reserved.
//

import UIKit

class ListTableViewCell: UITableViewCell {
    @IBOutlet var ToDoLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    func セルに表示するデータの制御(選択数はこれを使う: IndexPath){
        self.ToDoLabel.text = String((選択数はこれを使う.row)+1)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
