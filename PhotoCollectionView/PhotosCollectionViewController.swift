//
//  PhotosCollectionViewController.swift
//  PhotoCollectionView
//
//  Created by Felix Titov on 6/11/22.
//  Copyright © 2022 by Felix Titov. All rights reserved.
//  


import UIKit


class PhotosCollectionViewController: UICollectionViewController {
    
    private let photos = [
        "dog1",
        "dog2",
        "dog3",
        "dog4",
        "dog5",
        "dog6",
        "dog7",
        "dog8",
        "dog9",
        "dog10",
        "dog11",
        "dog12",
        "dog13",
        "dog14",
        "dog15"
    ]

    private let itemsPerRow: CGFloat = 2
    private let sectionsInserts = UIEdgeInsets(top: 20, left: 20, bottom: 20, right: 20)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // setup with layout property
//        let layout = collectionView.collectionViewLayout as! UICollectionViewFlowLayout
//        layout.itemSize = CGSize (width: 70, height: 70)
//        layout.sectionInset = UIEdgeInsets(top: 20, left: 20, bottom: 20, right: 20)
//        layout.minimumLineSpacing = 1
//        layout.minimumInteritemSpacing = 1
//        layout.scrollDirection = .vertical
        
        collectionView.showsVerticalScrollIndicator = false

    }

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return photos.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "photoCell", for: indexPath) as! PhotoCollectionViewCell
        
        let test = "Photo did set with width \(cell.dogImageView.frame.width) and height \(cell.dogImageView.frame.height)"
        
        print("Before photo setting \(test)")
    
        cell.dogImageView.image = UIImage(named: photos[indexPath.item])
        
        let test1 = "Photo did set with width \(cell.dogImageView.frame.width) and height \(cell.dogImageView.frame.height) \n"
        
        print("Aftef photo setting \(test1)")
     //   cell.dogImageView.contentMode = .scaleAspectFill
   //     cell.dogImageView.clipsToBounds = true
  //      cell.dogImageView.layer.cornerRadius = cell.dogImageView.frame.height / 2
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "sendPhotoSegue" {
            guard let photoVC = segue.destination as? PhotoViewController else { return }
            guard let cell = sender as? PhotoCollectionViewCell else { return }
            
            let test = "Photo did set with width \(cell.dogImageView.frame.width) and height \(cell.dogImageView.frame.height)"
            
            print("Before photo setting \(test)")
            
            let test1 = "Photo did set with width \(cell.dogImageView.frame.width) and height \(cell.dogImageView.frame.height)"
            
            print("Aftef photo setting \(test1)")
            
            photoVC.image = cell.dogImageView.image
            
        }
    }
}

// MARK: Custom size for cells

extension PhotosCollectionViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let paddingWidth = sectionsInserts.left * (itemsPerRow + 1)
        
        let availableWidth = collectionView.frame.width - paddingWidth
        let widthPerItem = availableWidth / itemsPerRow
        
        return CGSize(width: widthPerItem, height: widthPerItem)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        sectionsInserts
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        sectionsInserts.left
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        sectionsInserts.left
    }
}

