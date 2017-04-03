//
//  ViewController.swift
//  Swift Statement
//
//  Created by 李明禄 on 2017/4/2.
//  Copyright © 2017年 SocererGroup. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var selfCompletion: (()->())?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let person = Person.init(dict: [ "name": "zhang" as AnyObject, "age": 20 as AnyObject, "title": "我是领证" as AnyObject])
        
        print("\(person.name!), \(person.title!)")
        
        loadData { [weak self] in
            print(self?.view as Any)
        }
        
    }
    
    func loadData(Completion:@escaping ()->()) {
        DispatchQueue.global().async {
            print("耗时操作")
            self.selfCompletion = Completion
            
            Thread.sleep(forTimeInterval: 2.0)
            
            DispatchQueue.main.async {
                print("更新UI")
                
            }
        }
    }

    
     deinit {
        print("fuck you")
    }


}

