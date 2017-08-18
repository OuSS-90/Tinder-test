//
//  ViewController.swift
//  Tinder-test
//
//  Created by OuSS on 8/16/17.
//  Copyright © 2017 OuSS. All rights reserved.
//

import UIKit

class ViewController: UIViewController,SPTinderViewDataSource, SPTinderViewDelegate {

    @IBOutlet var tinderView: SPTinderView!
    let cellIdentifier = "MyTinderCell"
    var developers = [["name":"Clara Smith","skill":"Django","sex":"F"],
                    ["name":"John Harper","skill":"Python","sex":"M"],
                    ["name":"Sagar Shah","skill":"Django","sex":"M"],
                    ["name":"Bob Thomas","skill":"React","sex":"M"],
                    ["name":"Sophie Laura","skill":"React","sex":"F"],
                    ["name":"Sammie Lopez","skill":"Django","sex":"F"],
                    ["name":"Connie Jones","skill":"Django","sex":"F"],
                    ["name":"Camille Rowe","skill":"Django","sex":"F"],
                    ["name":"Joana Silver","skill":"Python","sex":"F"],
                    ["name":"Sasha Doe","skill":"Django","sex":"F"],
                    ["name":"Gaby Simone","skill":"React","sex":"F"],
                    ["name":"Chloe Isabella","skill":"React","sex":"F"],
                    ["name":"George Stanley","skill":"Django","sex":"M"],
                    ["name":"Dominic Hope","skill":"Django","sex":"M"],
                    ["name":"Sandra Bonhomme","skill":"Django","sex":"F"],
                    ["name":"Sophie Gerbault","skill":"React","sex":"F"],
                    ["name":"Sarah Seemore","skill":"React","sex":"F"],
                    ["name":"Rachel Green","skill":"Django","sex":"F"],
                    ["name":"Josephine Taylor","skill":"Django","sex":"F"],
                    ["name":"Jay Jiang","skill":"Django","sex":"M"],
                    ["name":"Hunter Dickson","skill":"React","sex":"M"],
                    ["name":"Sam Gupta","skill":"React","sex":"M"],
                    ["name":"Tom Brady","skill":"Django","sex":"M"],
                    ["name":"Taylor Thompson","skill":"Django","sex":"F"],
                    ["name":"Tatianna Marshall","skill":"Django","sex":"F"],
                    ["name":"Eric Street","skill":"Python","sex":"M"],
                    ["name":"Marine Simon","skill":"Python","sex":"F"],
                    ["name":"Ronald Duck","skill":"Python","sex":"M"],
                    ["name":"Jennifer Lopez","skill":"Python","sex":"F"]]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tinderView.frame = self.view.frame
        tinderView.registerClass(MyTinderCell.self, forCellReuseIdentifier: cellIdentifier)
        tinderView.dataSource = self
        tinderView.delegate = self
        tinderView.backgroundColor = UIColor.white
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func refreshPressed(_ sender: UIBarButtonItem) {
         tinderView.reloadData()
    }
    

    func tinderView(_ view: SPTinderView, didSelectCellAt index: Int) {
        title = "Did select at \(index)"
    }
    
    func numberOfItemsInTinderView(_ view: SPTinderView) -> Int {
        return developers.count
    }
    
    func tinderView(_ view: SPTinderView, cellAt index: Int) -> SPTinderViewCell? {
        if let cell = tinderView.dequeueReusableCellWithIdentifier(cellIdentifier) as? MyTinderCell {
            let developer = developers[index]
            guard let name = developer["name"], let skill = developer["skill"], let sex = developer["sex"] else {
                return nil
            }
            let imageName = (sex == "M") ? "male" : "female"
            cell.titleLabel.text = name
            cell.subLabel.text = skill
            cell.imageView.image = UIImage(named: imageName)
            return cell
        }
        return nil
    }
    
    func tinderView(_ view: SPTinderView, didMoveCellAt index: Int, towards direction: SPTinderViewCellMovement) {
        print("\(direction)")
    }
}

