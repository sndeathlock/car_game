//
//  carmovings.swift
//  Corrected_Cargame
//
//  Created by sn15abl on 26/03/2018.
//  Copyright © 2018 sn15abl. All rights reserved.
//

import UIKit

class carmovings: UIImageView {

    var startLocation: CGPoint?
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        startLocation = touches.first?.location(in: self)
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        let currentLocation = touches.first?.location(in: self)
        let dx = currentLocation!.x - startLocation!.x
        let dy = currentLocation!.y - startLocation!.y
        
        self.center = CGPoint(x: self.center.x+dx, y: self.center.y+dy)
    }
    
}

