//
//  MRCALayerExtension.swift
//  WallpaperTemplateSwift3
//
//  Created by Mamun Ar Rashid on 7/23/17.
//  Copyright © 2017 Fantasy Apps. All rights reserved.
//

import UIKit

extension CALayer {
    func addBorder(edges: [UIRectEdge], color: UIColor, thickness: CGFloat) {
        for edge in edges {
            let border = CALayer()
            switch edge {
            case .top:
                border.frame = CGRect(x:0, y:0,width:(self.frame.size.width), height:thickness)
                break
            case .bottom:
                border.frame = CGRect(x:0, y:self.frame.size.height - thickness, width:self.frame.size.width, height:thickness)
                break
            case .left:
                border.frame = CGRect(x:0, y:0, width:thickness, height:self.frame.size.height)
                break
            case .right:
                border.frame = CGRect(x:self.frame.size.width - thickness, y:0, width:thickness, height:self.frame.size.height)
                break
            default:
                break
            }
            border.backgroundColor = color.cgColor;
            self.addSublayer(border)
        }
    }
}
