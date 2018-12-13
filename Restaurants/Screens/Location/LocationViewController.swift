//
//  LocationViewController.swift
//  Restaurants
//
//  Created by Pankaj Kulkarni on 13/12/18.
//  Copyright © 2018 Pankaj Kulkarni. All rights reserved.
//

import UIKit

class LocationViewController: UIViewController {
    
    @IBOutlet weak var locationView: LocationView!
    var locationService: LocationService?

    override func viewDidLoad() {
        super.viewDidLoad()

        locationView.didTapAllow = { [weak self] in
            self?.locationService?.requestLocationAuthorization()
        }
        
        locationService?.didChangeStatus = { [weak self] success in
            if success {
                self?.locationService?.requestLocation()
            }
        }
        
        locationService?.newLocation = { [weak self] result in
            switch result {
            case .success(let location):
                print(location)
            case .failure(let error):
                assertionFailure("Error getting user locaiton: \(error)")
            }
        }
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
