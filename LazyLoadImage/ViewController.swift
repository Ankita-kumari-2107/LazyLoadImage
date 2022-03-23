//
//  ViewController.swift
//  LazyLoadImage
//
//  Created by Ankita Kumari on 21/03/22.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {
    
    @IBOutlet weak var collectioView: UICollectionView!
    var arrData = [String]()
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
    {
        arrData.count
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell
    {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? CollectionViewCell else
        {
            return UICollectionViewCell()
        }
        return cell
    }

    override func viewDidLoad()
    {
        super.viewDidLoad()
        collectioView.dataSource = self
        collectioView.delegate = self
        arrData = [
            "https://www.pexels.com/photo/tiger-above-green-grass-during-day-time-46251/",
            "https://images.pexels.com/photos/148868/pexels-photo-148868.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
            "https://images.pexels.com/photos/9988626/pexels-photo-9988626.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
            "https://images.pexels.com/photos/302304/pexels-photo-302304.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260"
            
        ]
    }


}

extension ViewController: UICollectionViewDelegateFlowLayout
{
    
    func collectionView(_ collectioView : UICollectionView, layout UICollectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize
    {
        return CGSize(width: (collectionView.frame.size.width / 2), height: (collectionView.frame.size.height / 4))
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        0
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        0
    }
}
