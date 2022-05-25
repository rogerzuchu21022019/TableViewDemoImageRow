//
//  SecondViewController.swift
//  TableViewDemoImageRow
//
//  Created by Vu Thanh Nam on 11/05/2022.
//

import UIKit

class SecondViewController :UIViewController{
    var image1:String!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: image1)!)
    }
}
