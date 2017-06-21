//
//  FirstViewController.swift
//  Tab
//
//  Created by Derrick Ho on 6/20/17.
//  Copyright © 2017 Derrick Ho. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let s = UISwitch()
        view.addSubview(s)
        s.center = view.center
        s.addTarget(self, action: #selector(self.switchIt), for: UIControlEvents.valueChanged)
        s.isOn = mayPass
        
        view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.go_second)))
    }

    func go_second() {
        if tabBarController?.delegate?.tabBarController?(tabBarController!, shouldSelect: tabBarController!.viewControllers![1]) == true {
            tabBarController?.selectedIndex = 1
        }
        
        
        class Testing {
            func it(_ t: Testing) -> Bool { return false }
        }
        
        let a = Testing()
        a.it(a)
        var b: Testing?
        b?.it(b!)
        b = Testing()
        b?.it(b!)
    
        
    }
    
    func switchIt() {
        mayPass = !mayPass
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

