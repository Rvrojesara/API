//
//  ViewController.swift
//  ApiPractice
//
//  Created by admin on 08/10/24.
//

import UIKit

class ViewController: UIViewController {
    var catArr:[catmodel]=[]
    

    @IBOutlet weak var tablevc: UITableView!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        callApi()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        // Do any additional setup after loading the view.
    }
    
    func callApi(){
      
        ApiManager().ApiCall{result in
            switch result{
            case.success(let data):
                self.catArr.append(contentsOf: data)
                self.tablevc.reloadData()
               
                
            case.failure(let error):
                debugPrint("Something went wrong")
                
            }
        }
    }


}

extension ViewController: UITableViewDataSource, UITableViewDelegate{
    func setup()
    {
        tablevc.dataSource=self
        tablevc.delegate=self
        tablevc.register(UINib(nibName: "catCell", bundle: nil), forCellReuseIdentifier: "catcell")
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return catArr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell=tableView.dequeueReusableCell(withIdentifier:"catcell", for: indexPath) as! catCell
        cell.idlabel.text="\(indexPath.row)"
        cell.namelabel.text=catArr[indexPath.row].name
        cell.originlabel.text=catArr[indexPath.row].origin
//        cell.colorslabel.text=catArr[indexPath.row]
        cell.temperamentlabel.text=catArr[indexPath.row].temperament
        cell.descriptionlabel.text=catArr[indexPath.row].description
        cell.imagelabel.text=catArr[indexPath.row].image
        return cell
        
    
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 350
    }
}

