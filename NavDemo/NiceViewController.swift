//
//  NiceViewController.swift
//  NavDemo
//
//  Created by cidr5 on 3/24/18.
//  Copyright © 2018 cidr5. All rights reserved.
//

import UIKit

class NiceViewController: UIViewController {
    @IBOutlet weak var input: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        input.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let target = segue.destination as? ViewController else {return}
        target.text = input.text
    }
}

extension NiceViewController: UITextFieldDelegate {
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        input.resignFirstResponder()
        return false
    }
}
