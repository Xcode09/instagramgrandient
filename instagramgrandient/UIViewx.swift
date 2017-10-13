//
//  UIViewx.swift
//  instagramgrandient
//
//  Created by Ali on 5/30/17.
//  Copyright © 2017 Ali. All rights reserved.
//

import UIKit
@IBDesignable
class UIViewx: UIView {


    @IBInspectable var first:UIColor = UIColor.white{
        didSet{
            update()
        }
    }
    @IBInspectable var second:UIColor = UIColor.white{
        didSet{
            update()
        }
    }
    override class var layerClass : AnyClass{
        get{
            return CAGradientLayer.self
        }
    }

    func update(){
        let layer = self.layer as! CAGradientLayer
        layer.colors = [first.cgColor,second.cgColor]
    }

}
