//
//  UIColor+Ext.swift
//  RandomColor
//
//  Created by Fen on 17/06/2024.
//

import UIKit

extension UIColor {
    //    fonction pour retourner une couleur aléatoire
    static func random() -> UIColor {
        return UIColor(red: CGFloat.random(in: 0...1),
                                  green: CGFloat.random(in: 0...1),
                                  blue: CGFloat.random(in: 0...1),
                                  alpha: 1)
    }
    
}
