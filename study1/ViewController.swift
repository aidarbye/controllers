//
//  ViewController.swift
//  study1
//
//  Created by Айдар Нуркин on 19.01.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var mainLabel: UILabel!
    @IBOutlet var segmentedControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        segmentedControl.insertSegment(withTitle: "Third", at: 2, animated: false)
        mainLabel.text = ""
        mainLabel.font = mainLabel.font.withSize(30)
        mainLabel.numberOfLines = 2
        mainLabel.textAlignment = .center
    }
    
    @IBAction func segmentedControlAction(_ sender: Any) {
        switch segmentedControl.selectedSegmentIndex {
        case 0:
            mainLabel.text = "Selected index is 0"
            mainLabel.textColor = .red
        case 1:
            mainLabel.text = "Selected index is 1"
            mainLabel.textColor = .yellow
        case 2:
            mainLabel.text = "Selected index is 2"
            mainLabel.textColor = .brown
            
        default: break
        }
    }
    

}

