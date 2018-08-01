//
//  ViewController.swift
//  Example
//
//  Created by Rudd Fawcett on 8/1/18.
//  Copyright © 2018 Rudd Fawcett. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let pulse = Pulse.sharedInstance
        pulse.delegate = self
        
        pulse.startListening()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

extension ViewController: PulseDelegate {
    
    func manager(didUpdate bpm: Int) {
        label.text = "BPM: \(bpm)"
    }
    
}
