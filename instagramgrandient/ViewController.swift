//
//  ViewController.swift
//  instagramgrandient
//
//  Created by Ali on 5/30/17.
//  Copyright © 2017 Ali. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var gradient: UIViewx!

    private var currentindex = -1
    private var colorarray:[(color1:UIColor,color2:UIColor)] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        colorarray.append((#colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1),#colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)))
        colorarray.append((#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1),#colorLiteral(red: 0.5818830132, green: 0.2156915367, blue: 1, alpha: 1)))
        animate()
        
    }

    private func animate(){
        currentindex = currentindex == (colorarray.count-1) ? 0 : currentindex + 1
        UIView.transition(with: gradient, duration: 6, options: [.transitionCrossDissolve], animations: {
            self.gradient.first = self.colorarray[self.currentindex].color1
            self.gradient.second = self.colorarray[self.currentindex].color2
        }) { (scusee) in
            self.animate()
        }

    }
}

