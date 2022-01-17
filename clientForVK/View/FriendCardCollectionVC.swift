//
//  FriendCardCollectionVC.swift
//  clientForVK
//
//  Created by Николай Трушин on 23.12.2021.
//

import UIKit

class FriendCardCollectionVC: UICollectionViewController, UICollectionViewDelegateFlowLayout{
    
    @IBAction func setLike(sender: UIButton){
        print("ggg")
        if !sender.isSelected {
            sender.isSelected = true
        } else {
            sender.isSelected = false
        }
        sender.setImage(UIImage(systemName: "heart.fill"), for: .selected)
        sender.setTitle("1", for: .selected)
        sender.setImage(UIImage(systemName: "heart"), for: .normal)
        sender.setTitle("0", for: .normal)
        
//        if sender.isSelected == false {
//            sender.isSelected = true
//
//            let defaults = UserDefaults.standard
//            defaults.set(true, forKey: "isSelected\(sender.tag)")
//          }
//          else {
//            sender.isSelected = false
//            let defaults = UserDefaults.standard
//            defaults.set(false, forKey: "isSelected\(sender.tag)")
//          }
        
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Register cell classes
        self.collectionView.register(UINib(nibName: "FriendCardViewCell", bundle: nil), forCellWithReuseIdentifier: "friendCardViewCell")
        // self.navigationItem.title =
        
        
        // Do any additional setup after loading the view.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        userPhoto.count
    }
    
   

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "friendCardViewCell", for: indexPath) as? FriendCardViewCell
        else {
            return UICollectionViewCell()
        }
        let currentPhoto = userPhoto[indexPath.row]
        cell.configure(photo: currentPhoto)
        cell.likeButton.addTarget(self, action: #selector(setLike(sender:)), for: .touchUpInside)
        let tag = indexPath.row
        cell.likeButton.tag = tag
        var defaults = UserDefaults.standard
        var state = defaults.bool(forKey: "isSelected\(tag)")
        
    
        // Configure the cell
    
        return cell
    }

    // MARK: UICollectionViewDelegate

    func collectionView(_ collectionView: UICollectionView,
                         layout collectionViewLayout: UICollectionViewLayout,
                         sizeForItemAt indexPath: IndexPath) -> CGSize {
                         return CGSize(width: view.frame.width/3, height: view.frame.width/3)
     }
    
     func collectionView(_ collectionView: UICollectionView,
                         layout collectionViewLayout: UICollectionViewLayout,
                         minimumLineSpacingForSectionAt section: Int) -> CGFloat {
                         return 0
     }
     
     func collectionView(_ collectionView: UICollectionView,
                         layout collectionViewLayout: UICollectionViewLayout,
                         minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
                         return 0
      }
    
    //override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    //
    //}
    
    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
    
    }
    */

}
