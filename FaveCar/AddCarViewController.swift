//
//  AddCarViewController.swift
//  FaveCar
//
//  Created by Pulkit Aggarwal on 07/09/18.
//  Copyright © 2018 Maxx. All rights reserved.
//

import UIKit

class AddCarViewController: UIViewController,UITextFieldDelegate {

    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var carImgView: UIImageView!
    
    
    @IBOutlet weak var selectCarBtn: UIButton!
    
    @IBOutlet weak var charCount: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        nameTextField.delegate = self
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        nameTextField.resignFirstResponder()
        // to dismiss keyboard
        return true
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if let length = textField.text?.count
        {
         charCount.text = "\(length+1) characters so far"
            
        }
        
        return true
    }


    @IBAction func selectCar(_ sender: Any) {
    }
    
    @IBAction func saveCar(_ sender: Any) {
    }
}
