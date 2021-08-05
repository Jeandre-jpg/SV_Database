//
//  ViewController.swift
//  Stardew_Library_Root
//
//  Created by Jeandré De Villiers on 2021/08/03.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var GifView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        GifView.loadGif(name: "chicken")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}
   
    
