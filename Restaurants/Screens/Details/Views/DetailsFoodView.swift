//
//  DetailsFoodView.swift
//  Restaurants
//
//  Created by Pankaj Kulkarni on 13/12/18.
//  Copyright © 2018 Pankaj Kulkarni. All rights reserved.
//

import UIKit
import MapKit

@IBDesignable class DetailsFoodView:  BaseView {
    
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var priceLale: UILabel!
    @IBOutlet weak var hoursLale: UILabel!
    @IBOutlet weak var locationLale: UILabel!
    @IBOutlet weak var ratingLale: UILabel!
    @IBOutlet weak var mapView: MKMapView!

    @IBAction func handleControl(_ sender: UIPageControl) {
        
    }
    
}
