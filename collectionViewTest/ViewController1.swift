//
//  ViewController1.swift
//  collectionViewTest
//
//  Created by Nicolas on 2/1/19.
//  Copyright © 2019 Nicolas. All rights reserved.
//

import UIKit
import MMCardView

class ViewController1: UIViewController {

    @IBOutlet weak var collectionView: MMCollectionView!
    @IBOutlet weak var botView: UIView!
    @IBOutlet weak var topSpace: NSLayoutConstraint!
    
    var dt = [1,2,3,4,5,6,7]
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.register(UINib(nibName: "CardACell", bundle: nil), forCellWithReuseIdentifier: "CardA")
        self.view.bringSubviewToFront(botView)
        if let layout = collectionView.collectionViewLayout as? CustomCardLayout {
            layout.titleHeight = 50.0
            layout.bottomShowCount = 3
            layout.cardHeight = 300
        }
    }
    
    override func viewDidLayoutSubviews() {
        topSpace.constant = 300 - CGFloat(50*dt.count)
        if topSpace.constant < 0 {
            topSpace.constant = 0
        }
    }

}

extension ViewController1: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dt.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CardA", for: indexPath) as! CardACell
        return cell
    }
}
