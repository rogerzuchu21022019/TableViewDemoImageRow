//
//  ViewController.swift
//  TableViewDemoImageRow
//
//  Created by Vu Thanh Nam on 11/05/2022.
//

import UIKit

class ViewController: UIViewController , UITableViewDataSource , UITableViewDelegate {
    

    @IBOutlet weak var tbv1: UITableView!
    var girls:[Beautifulgirl] = [
        Beautifulgirl(image: "1", name: "Nana"),
        Beautifulgirl(image: "2", name: "Trang"),
        Beautifulgirl(image: "3", name: "Nhu"),
        Beautifulgirl(image: "4", name: "Hien"),
        Beautifulgirl(image: "5", name: "Thao"),
    ]
//    var arr1:[String] = ["aid","aim","anxiety","astronomy","attach"]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tbv1.dataSource = self
        tbv1.delegate = self
       

    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let secondScreen = storyBoard.instantiateViewController(withIdentifier: "SecondView") as! SecondViewController
        secondScreen.image1 = girls[indexPath.row].image
        self.navigationController?.pushViewController(secondScreen, animated: true)
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return girls.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CELL1") as! EachRow
        cell.iv1.image = UIImage(named: girls[indexPath.row].image)
        cell.myLabel.text = girls[indexPath.row].name
        cell.didTapButton()
        return cell
    }
    
}

