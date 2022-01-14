//
//  ViewController.swift
//  simpsonbook
//
//  Created by Muhammed Selimhan gülsever on 14.01.2022.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    

    @IBOutlet weak var tableview: UITableView!
    
    var mysimpsons = [simpsons]()
    var choosensmpsn :simpsons?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableview.dataSource = self
        tableview.delegate = self
        // Do any additional setup after loading the view.
        
        // simpsons object
        let homor = simpsons(initname: "Homor", initlastname: "Simpson", initage: 35, initjob: "engineer", initimage: UIImage(named: "homor simpson")!)
        let bart = simpsons(initname: "Bart", initlastname: "Simpson", initage: 15, initjob: "kiddo", initimage: UIImage(named: "bart simpson")!)
        let lisa = simpsons(initname: "Lisa", initlastname: "Simpson", initage: 10, initjob: "kiddo", initimage: UIImage(named: "lisa simpson")!)
        let maggie = simpsons(initname: "Maggie", initlastname: "Simpson", initage: 1, initjob: "baby", initimage: UIImage(named: "maggie simpson")!)
        let marge = simpsons(initname: "Marge", initlastname: "Simpson", initage: 34, initjob: "Homeworker", initimage: UIImage(named: "marge simpson")!)
        let homerArray = [homor,bart,lisa,maggie,marge]
        
        for i in homerArray{
            mysimpsons.append(i)
            print(mysimpsons)
            
        }
                
        
        
        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mysimpsons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = mysimpsons[indexPath.row].name
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        choosensmpsn = mysimpsons[indexPath.row]
        self.performSegue(withIdentifier: "toSC", sender: nil)
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSC" {
            let destinationVC = segue.destination as! secondViewController
            destinationVC.secilensmpsn = choosensmpsn
        }
    }
    


}

