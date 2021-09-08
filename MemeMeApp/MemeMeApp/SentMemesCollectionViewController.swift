//
//  SentMemesCollectionViewController.swift
//  MemeMeApp
//
//  Created by W.b.e.n on 22/08/21.
//

import UIKit

class SentMemesCollectionViewController: UICollectionViewController {
        
    var memes: [Meme]! {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        return appDelegate.memes
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.tabBarController?.tabBar.isHidden = false
        collectionView!.reloadData()
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MemeCollectionViewCell", for: indexPath) as! MemeCollectionViewCell
        let meme = self.memes[indexPath.row]
        cell.memeImageView?.image = meme.memedImage
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.memes.count
    }
    
//    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//        // Grab the DetailVC from Storyboard
//        let detailController = self.storyboard!.instantiateViewController(withIdentifier: "MemeCollectionViewCell") as! MemeDetailViewController
//
//        //Populate view controller with data from the selected item
//        detailController.meme = memes[(indexPath as NSIndexPath).row]
//
//        // Present the view controller using navigation
//        navigationController!.pushViewController(detailController, animated: true)
//    }
}
