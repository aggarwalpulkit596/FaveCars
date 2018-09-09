//
//  CarTableViewCell.swift
//  FaveCar
//
//  Created by Pulkit Aggarwal on 09/09/18.
//  Copyright © 2018 Maxx. All rights reserved.
//

import UIKit

class CarTableViewCell: UITableViewCell {

    @IBOutlet weak var carImgView: UIImageView!
    
    @IBOutlet weak var backLabel: UILabel!
    
    @IBOutlet weak var numberLabel: UILabel!
    
    @IBOutlet weak var titleLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        
        titleLabel.layer.cornerRadius = 10
        titleLabel.layer.borderColor = UIColor.darkGray.cgColor
        titleLabel.layer.borderWidth = 3
        titleLabel.clipsToBounds = true
        
        numberLabel.layer.cornerRadius = 17.5
        numberLabel.layer.borderColor = UIColor.black.cgColor
        numberLabel.layer.borderWidth = 3
        numberLabel.clipsToBounds = true
        
        backLabel.layer.cornerRadius = 10
        backLabel.layer.borderColor = UIColor.darkGray.cgColor
        backLabel.layer.borderWidth = 3
        backLabel.clipsToBounds = true
        
        carImgView.layer.cornerRadius = 10
        carImgView.clipsToBounds = true    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
