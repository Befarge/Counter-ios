//
//  ViewController.swift
//  Counter
//
//  Created by Евгений Веников on 13.02.2025.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var counterLabel: UILabel!
    private var count: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func cliickButton() {
        count += 1
        counterLabel.text = String(count)
    }
    
}

