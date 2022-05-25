//
//  EachRow.swift
//  TableViewDemoImageRow
//
//  Created by Vu Thanh Nam on 11/05/2022.
//

import UIKit

class EachRow: UITableViewCell {

    @IBOutlet weak var iv1: UIImageView!
    @IBOutlet weak var myLabel: UILabel!
    @IBAction func didTapButton(){
        print("did tap button")
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
