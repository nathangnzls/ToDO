//
//  ColorExtension.swift
//  ToDo
//
//  Created by Admin on 6/4/20.
//  Copyright © 2020 Admin. All rights reserved.
//

import UIKit

extension UIColor{
    static func random() -> UIColor {
        return UIColor(red:   .random(in: 0...1),
                       green: .random(in: 0...1),
                       blue:  .random(in: 0...1),
                       alpha: 1.0)
    }
}
