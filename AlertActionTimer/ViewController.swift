//
//  ViewController.swift
//  AlertActionTimer
//
//  Created by macbook on 11/19/19.
//  Copyright © 2019 jaminya. All rights reserved.
//
//  Reference: https://code.tutsplus.com/tutorials/create-a-custom-alert-controller-in-ios-10-swift-3--cms-27589

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

    }
    
    override func viewDidAppear(_ animated: Bool) {

    let alert = UIAlertController(title: "Enable Network", message: "", preferredStyle: .alert)
    
        // Change font of the title and message
        let titleFont = [NSAttributedString.Key.font : UIFont(name: "AmericanTypewriter", size: 18)!]
        let messageFont = [NSAttributedString.Key.font: UIFont(name: "HelveticaNeue-Thin", size: 14)! ]
        let attributedTitle = NSMutableAttributedString(string: "Multiple buttons", attributes: titleFont)
        let attributedMessage = NSMutableAttributedString(string: "Select an Action", attributes: messageFont)
        alert.setValue(attributedTitle, forKey: "attributedTitle")
        alert.setValue(attributedMessage, forKey: "attributedMessage")
        
        let action1 = UIAlertAction(title: "Action 1", style: .default, handler: { (action) -> Void in
            print("ACTION 1 selected!")
        })
        
        let action2 = UIAlertAction(title: "Action 2", style: .default, handler: { (action) -> Void in
            print("ACTION 2 selected!")
        })
        
        let action3 = UIAlertAction(title: "Action 3", style: .default, handler: { (action) -> Void in
            print("ACTION 3 selected!")
        })
        
        // Cancel button
        let cancel = UIAlertAction(title: "Cancel", style: .destructive, handler: { (action) -> Void in })
        
        // Restyle the view of the Alert
        alert.view.tintColor = UIColor.brown  // change text color of the buttons
        alert.view.backgroundColor = UIColor.cyan  // change background color
        alert.view.layer.cornerRadius = 25   // change corner radius
        
        // Add action buttons and present the Alert
        alert.addAction(action1)
        alert.addAction(action2)
        alert.addAction(action3)
        alert.addAction(cancel)
        present(alert, animated: true, completion: nil)
    }
    
}

