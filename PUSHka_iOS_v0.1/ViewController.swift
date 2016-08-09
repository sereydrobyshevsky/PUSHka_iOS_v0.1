//
//  ViewController.swift
//  PUSHka_iOS_v0.1
//
//  Created by Сергей Дробышевский on 09.08.16.
//  Copyright © 2016 Сергей Дробышевский. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
   
        // Call API
        let api = APIManager()
        api.loadData("https://api.coursera.org/api/courses.v1?start=300&limit=10", completion: didLoadData)
    
    }

    
    func didLoadData(result:String) {
        
        //Alert with OK
        
        let alert = UIAlertController(title: result, message: nil, preferredStyle: .Alert)
        
        let okAction = UIAlertAction(title: "Ok", style: .Default) { action -> Void in
            // do smth if you want
        }
        alert.addAction(okAction)
        self.presentViewController(alert, animated: true, completion: nil)

    }

}

