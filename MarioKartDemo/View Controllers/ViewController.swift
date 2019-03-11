//
//  ViewController.swift
//  MarioKartDemo
//
//  Created by Juan Dominguez on 3/11/19.
//  Copyright © 2019 Juan Dominguez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    // all kart assets' gestures will be attached to the same pan action
    @IBAction func didPanKartView(_ sender: UIPanGestureRecognizer) {
        let location = sender.location(in: view)
        let kartView = sender.view!
        kartView.center = location
    }
    
    // same as before, all karts use the same action
    @IBAction func didPinchKartView(_ sender: UIPinchGestureRecognizer) {
        let scale = sender.scale
        let kartView = sender.view!
        kartView.transform = CGAffineTransform(scaleX: scale, y: scale)
    }
    
    @IBAction func didRotateKartView(_ sender: UIRotationGestureRecognizer) {
        let rotation = sender.rotation
        let kartView = sender.view!
        kartView.transform = CGAffineTransform(rotationAngle: rotation)
    }
    
    
}

