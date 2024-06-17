//
//  ColoDetailVC.swift
//  RandomColor
//
//  Created by Fen on 17/06/2024.
//

import UIKit

class ColorDetailVC: UIViewController {
    var color : UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = color ?? .blue

    }
}
