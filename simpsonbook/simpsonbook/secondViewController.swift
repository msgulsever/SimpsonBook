//
//  secondViewController.swift
//  simpsonbook
//
//  Created by Muhammed Selimhan gülsever on 14.01.2022.
//

import UIKit

class secondViewController: UIViewController {

    var secilensmpsn : simpsons?
    
    @IBOutlet weak var imageview: UIImageView!
    
    @IBOutlet weak var isimLabel: UILabel!
    
    @IBOutlet weak var meslekLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        isimLabel.text = "\(secilensmpsn!.name)  \(secilensmpsn!.lastname)"
        meslekLabel.text = "Meslek: \(secilensmpsn!.job) \n Yaş: \(secilensmpsn!.age)"
        imageview.image = secilensmpsn?.image
        
        
        

        // Do any additional setup after loading the view.
    }
    

    

}
