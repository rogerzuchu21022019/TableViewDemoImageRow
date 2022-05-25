//
//  TableViewCell.swift
//  TableViewDemoImageRow
//
//  Created by Vu Thanh Nam on 11/05/2022.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var iv1: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
