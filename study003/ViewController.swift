//
//  ViewController.swift
//  study003 003 003
//
//  Created by PeiYu Wang on 2019/7/7.
//  Copyright © 2019 PeiYu Wang. All rights reserved.
//
//代码创建标签控制器
import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let tabBar=UITabBarController()
        var array=Array<UIViewController>()
        for index in 0..<8{
            let con=UIViewController()
            
            con.view.backgroundColor=UIColor(red: CGFloat(arc4random()%255)/255.0, green: CGFloat(arc4random()%255)/255.0, blue: CGFloat(arc4random()%255)/255.0, alpha: 1)
            
//            con.tabBarItem=UITabBarItem(tabBarSystemItem: .history, tag: index)
//            con.tabBarItem=UITabBarItem(title: "title", image: UIImage(named: "wode1"), tag: index)
//            con.tabBarItem=UITabBarItem(title: "title", image: UIImage(named: "wode1"), selectedImage: UIImage(named: "wode2"))
            con.tabBarItem.title="\(index)视图"
            con.tabBarItem.image=UIImage(named: "wode1")
            con.tabBarItem.selectedImage=UIImage(named: "wode2")
            array.append(con)
        }
        tabBar.viewControllers=array
        self.present(tabBar, animated: true,completion: nil)
        
        tabBar.tabBar.barTintColor=UIColor.green
        tabBar.tabBar.tintColor=UIColor.white
    }

}

