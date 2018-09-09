//
//  AddCarViewController.swift
//  FaveCar
//
//  Created by Pulkit Aggarwal on 07/09/18.
//  Copyright © 2018 Maxx. All rights reserved.
//

import UIKit

class AddCarViewController: UIViewController,UITextFieldDelegate,UIImagePickerControllerDelegate,UINavigationControllerDelegate {

    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var carImgView: UIImageView!
    
    
    @IBOutlet weak var selectCarBtn: UIButton!
    
    @IBOutlet weak var charCount: UILabel!
    
    let photoPicker = UIImagePickerController()

    var imagepicked = false
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "ADD NEW CAR"
        
        nameTextField.delegate = self
        
        photoPicker.delegate = self
        //photoPicker.allowsEditing = true
        
        nameTextField.layer.cornerRadius = 10
        
        selectCarBtn.layer.cornerRadius = 10
        // Do any additional setup after loading the view.
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
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        
        if let selectedImage = info[UIImagePickerControllerOriginalImage] as? UIImage
        {
            carImgView.image = selectedImage
            imagepicked = true
            imagesArray.insert(selectedImage, at: 0)
        }
        dismiss(animated: true)
    }

    @IBAction func selectCar(_ sender: Any) {
        
        present(photoPicker,animated: true)
        
    }
    
    @IBAction func saveCar(_ sender: Any) {
        if !imagepicked
        {
            print("there is no image")
            return
        }
        
        if (nameTextField.text?.isEmpty)!
        {
            print("text empty")
            return
        }
        
        if let value = nameTextField.text
        {
            namesArray.insert(value, at: 0)
            
            if let navController = navigationController
            {
                navController.popViewController(animated: true)
            }
        }
    }
}
