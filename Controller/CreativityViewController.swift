//
//  CreativityViewController.swift
//  Connor_CSP
//
//  Created by Johnson, Connor on 10/26/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import UIKit

public class CreativityViewController : UICollectionViewController, UICollectionViewDelegateFlowLayout
{

    private let reuseIdentifier = "artIdentifier"
    private let sectionInsets UIEdgeInsets(top: 50.0, left: 20.0, bottom: 50.0, right: 20.0)
    private let itemsPerRow : CGFloat = 3
    
    private lazy var artSelection : [UIImage?] =
    {
        return [
            UIImage(named: "bmo-2"),
            UIImage(named: "beemoe"),
            UIImage(named: "cootbmo"),
            UIImage(named: "bmo-2"),
            UIImage(named: "cootbmo"),
            UIImage(named: "bmo-2"),
            UIImage(named: "beemoe"),
            UIImage(named: "bmOo"),
            UIImage(named: "bmOo"),
        ]
        // Do any additional setup after loading the view.
    }()
    
    var largePhotoIndexPath: IndexPath?
    {
        didSet
        {
            var indexPaths = [IndexPath]()
            if let largePhotoIndexPath = largePhotoIndexPath
            {
                indexPaths.append(largePhotoIndexPath)
            }
            if let oldValue = oldValue
            {
                indexPaths.append(oldValue)
            }
            
            collectionView?.performBatchUpdates(
                {
                    self.collectionView?.reloadItems(at: indexPaths)
            })
            {
                completed in
                
                if let largePhotoIndexPath = self.largePhotoIndexPath
                {
                    self.collectionView?.scrollToItem(at:largePhotoIndexPath,
                                                      at: .centeredVertically,
                                                      animated: true)
                }
                }
            }
            
        }
    }

