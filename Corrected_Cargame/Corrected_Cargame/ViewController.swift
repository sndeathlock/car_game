//
//  ViewController.swift
//  Corrected_Cargame
//
//  Created by sn15abl on 26/03/2018.
//  Copyright © 2018 sn15abl. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var road: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var imageArray: [UIImage]!
        
        imageArray = [UIImage(named: "road1.png")!,
                      UIImage(named: "road2.png")!,
                      UIImage(named: "road3.png")!,
                      UIImage(named: "road4.png")!,
                      UIImage(named: "road5.png")!,
                      UIImage(named: "road6.png")!,
                      UIImage(named: "road7.png")!,
                      UIImage(named: "road8.png")!,
                      UIImage(named: "road9.png")!,
                      UIImage(named: "road10.png")!,
                      UIImage(named: "road11.png")!,
                      UIImage(named: "road12.png")!,
                      UIImage(named: "road13.png")!,
                      UIImage(named: "road14.png")!,
                      UIImage(named: "road15.png")!,
                      UIImage(named: "road16.png")!,
                      UIImage(named: "road17.png")!,
                      UIImage(named: "road18.png")!,
                      UIImage(named: "road19.png")!,
                      UIImage(named: "road20.png")!]
        
        road.image = UIImage.animatedImage(with: imageArray, duration: 1.0);
        
        var carView: [UIImageView]!
        
        // carview = [UIImage(named : "car1.png")!,
        //UIImage(named :"car2.png")!]
        
        for index in 1...15 {
            let when = DispatchTime.now()
            
            DispatchQueue.main.asyncAfter(deadline:when)  {
                let carPic = arc4random_uniform(7)
                let carView=UIImageView(image :nil)
                
                switch carPic{
                case 1:carView.image=UIImage(named: "car4.png")
                case 2:carView.image=UIImage(named: "car5.png")
                    
                    
                default:carView.image=UIImage(named:"car1.png")
                }
                

                carView.frame=CGRect(x: 0, y:0,width : 50, height: 50)
                
            }
        
    }
    
        override func didReceiveMemoryWarning()    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    }
    
}

