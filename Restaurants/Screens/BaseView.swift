//
//  BaseView.swift
//  Restaurants
//
//  Created by Pankaj Kulkarni on 13/12/18.
//  Copyright © 2018 Pankaj Kulkarni. All rights reserved.
//

import UIKit

@IBDesignable class BaseView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.configure()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.configure()
    }
    
    func configure() {
        
    }
}
