//
//  PhotoCollectionViewCell.swift
//  PhotoCollectionView
//
//  Created by Felix Titov on 6/11/22.
//  Copyright © 2022 by Felix Titov. All rights reserved.
//  


import UIKit

class PhotoCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet var dogImageView: UIImageView!
    
    override func layoutSubviews() {
        super.layoutSubviews()
        layoutIfNeeded()
        
        dogImageView.layer.masksToBounds = true
        dogImageView.layer.cornerRadius = dogImageView.frame.height / 2
    }
}
