//
//  ViewController.swift
//  Closure
//
//  Created by Palanichamy Padmanabhan on 27/11/18.
//  Copyright © 2018 Palanichamy Padmanabhan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var lbl: UILabel!
    
    var closureName = { () -> () in }
    
    var value: String? {
        didSet {
            closureName()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        closureName = { [weak self]  in
            self?.lbl.text = self?.value
        }
    }

    @IBAction func textEditingChanged(_ sender: UITextField) {
        self.value = sender.text
    }
    
}

