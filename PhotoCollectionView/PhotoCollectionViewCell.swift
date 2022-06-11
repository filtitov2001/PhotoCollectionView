//
//  PhotoCollectionViewCell.swift
//  PhotoCollectionView
//
//  Created by Felix Titov on 6/11/22.
//  Copyright © 2022 by Felix Titov. All rights reserved.
//  


import UIKit

class PhotoCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet var dogImageView: UIImageView! {
        didSet {
            let test = "Photo did set with width \(dogImageView.frame.width) and height \(dogImageView.frame.height)"
            print(test)
        }
    }
}
