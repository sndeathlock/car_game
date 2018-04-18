//
//  ViewController.swift
//  Corrected_Cargame
//
//  Created by sn15abl on 26/03/2018.
//  Copyright © 2018 sn15abl. All rights reserved.
//

import UIKit

class ViewController: UIViewController{
    
        
    var CarAnimator: UIDynamicAnimator!
    var dynamicObjectBehavior : UIDynamicItemBehavior!
    var gravityBehavior: UIGravityBehavior!
    var collisionBehaviour: UICollisionBehavior!
    
    
    @IBOutlet weak var road: UIImageView!
    
    let carsList = [1,2,3,4,5,6]
    
    
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

    
        
        road.image = UIImage.animatedImage(with: imageArray, duration: 0.45);
        
        // cars coming
        
        CarAnimator = UIDynamicAnimator(referenceView: self.view)
        dynamicObjectBehavior = UIDynamicItemBehavior(items: [])
        collisionBehaviour = UICollisionBehavior(items:[])
        
        
        
   for index in 0...6{

            let carsDelay = Double(self.carsList[index])
            let When = DispatchTime.now() + carsDelay

            DispatchQueue.main.asyncAfter(deadline: When) {

            let coming = arc4random_uniform(6)
            
            let EnemyCar = UIImageView (image: nil)
                
            let displayWidth = UIScreen.main.bounds.width

            switch coming {
            
            case 1: EnemyCar.image = UIImage(named: "car1.png")
            case 2: EnemyCar.image = UIImage(named: "car2.png")
            case 3: EnemyCar.image = UIImage(named: "car3.png")
            case 4: EnemyCar.image = UIImage(named: "car4.png")
            case 5: EnemyCar.image = UIImage(named: "car5.png")
            case 6: EnemyCar.image = UIImage(named: "car6.png")
            default:EnemyCar.image = UIImage(named: "car1.png")
            
                }

          EnemyCar.frame = CGRect(x:Int(arc4random_uniform(UInt32(displayWidth))),y: 0, width: 40 ,height:80)
            
            self.view.addSubview(EnemyCar)
            self.view.bringSubview(toFront: EnemyCar)
                
            // collision








    




