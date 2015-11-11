//
//  ViewController.swift
//  SwiftDemo
//
//  Created by John Grant on 2015-11-10.
//  Copyright © 2015 twg. All rights reserved.
//

import UIKit
import AVKit

class ViewController: UIViewController {

    @IBOutlet weak var layout: UICollectionViewFlowLayout!
    @IBOutlet weak var collectionView: UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()

        self.collectionView.dataSource = self
        self.collectionView.delegate = self
    }
}

extension ViewController: UICollectionViewDataSource {

    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 100
    }

    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("Cell", forIndexPath: indexPath) as! ThumbnailCell

        cell.imageView.image = UIImage(named: "poster.jpg")

        return cell
    }
    
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
}

extension ViewController: UICollectionViewDelegate {


    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {

        let url = NSURL(string: "https://06-lvl3-pdl.vimeocdn.com/01/1210/5/131053193/381333554.mp4?expires=1447283176&token=0ebb24e18b1813e58f740")!
        let player = AVPlayer(URL: url)
        let controller = AVPlayerViewController()
        controller.player = player

        self.presentViewController(controller, animated: true, completion: nil)
    }
}

