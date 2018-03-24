//
//  ViewController.swift
//  NavDemo
//
//  Created by cidr5 on 3/24/18.
//  Copyright © 2018 cidr5. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var text: String?
    
    @IBOutlet weak var slider: UISlider!
    
    @IBOutlet weak var input: UITextField!
    
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = text ?? "Empty"
        input.delegate = self
    }

    @IBAction func onDismiss(_ sender: UIBarButtonItem) {
        self.dismiss(animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let target = segue.destination as? DummyViewController else {return}
        switch segue.identifier! {
        case "slider":
            target.text = "\(slider.value * 100)"
            break
        case "input":
            target.text = input.text
            break
        default: break
        }
    }
}

extension ViewController: UITextFieldDelegate {
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        input.resignFirstResponder()
        return false
    }
}
