//
//  CardACell.swift
//  collectionViewTest
//
//  Created by Nicolas on 2/1/19.
//  Copyright © 2019 Nicolas. All rights reserved.
//

import UIKit
import MMCardView

class CardACell: CardCell {

    @IBOutlet weak var mainView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        mainView.layer.cornerRadius = 10
    }

}
