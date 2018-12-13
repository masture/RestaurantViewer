//
//  LocationView.swift
//  Restaurants
//
//  Created by Pankaj Kulkarni on 13/12/18.
//  Copyright © 2018 Pankaj Kulkarni. All rights reserved.
//

import UIKit

@IBDesignable class LocationView: BaseView {

    @IBOutlet weak var allowButton: UIButton!
    @IBOutlet weak var denyButton: UIButton!
    
    var didTapAllow: (()->Void)?
    
    @IBAction func allowAction(_ sender: UIButton) {
        didTapAllow?()
    }
    
    @IBAction func denyAction(_ sender: UIButton) {
        
    }
            
}
