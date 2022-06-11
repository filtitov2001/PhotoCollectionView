//
//  PhotoViewController.swift
//  PhotoCollectionView
//
//  Created by Felix Titov on 6/11/22.
//  Copyright © 2022 by Felix Titov. All rights reserved.
//  


import UIKit

class PhotoViewController: UIViewController {
    
    var image: UIImage?
    
    @IBOutlet var photoImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        photoImageView.image = image
    }
    
    @IBAction func shareButtonTapped(_ sender: Any) {
        
       
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
