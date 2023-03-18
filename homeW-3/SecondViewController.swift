//
//  SecondViewController.swift
//  homeW-3
//
//  Created by Nurjamal Mirbaizaeva on 16/3/23.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    private var contacts: [Contact] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        initData()
    }
    private func initData(){
        contacts = [Contact(image: "image1", name: "Jane Cooper", phone: "(775)654-9543"), Contact(image: "Image2", name: "Devon Lane", phone: "(765)565-4543"), Contact(image: "image1", name: "Jacob Jones", phone: "(545)654-3543"), Contact(image: "Image3", name: "Deniel Kim", phone: "(213)654-0543"), Contact(image: "image1", name: "Kim Shin", phone: "(123)565-4543"), Contact(image: "image1", name: "Janybek Lane", phone: "(375)654-0543"), Contact(image: "Image2", name: "Aliev Akai", phone: "(797)565-4543"), Contact(image: "Image3", name: "Nura Kim", phone: "(532)654-2343")]
    }
}
    extension SecondViewController: UITableViewDataSource{
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return contacts.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "cell")
            cell.textLabel?.text = contacts[indexPath.row].name
            cell.detailTextLabel?.text = contacts[indexPath.row].phone
            cell.imageView?.image = UIImage(named: contacts[indexPath.row].image)
            return cell
        }
}
    struct Contact {
        var image: String
        var name: String
        var phone: String
    }
