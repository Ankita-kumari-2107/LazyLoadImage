//
//  CustomImageView.swift
//  LazyLoadImage
//
//  Created by Ankita Kumari on 22/03/22.
//

import UIKit

class CustomImageView: UIImageView{
    func loadImage(url : URL){
        let task = URLSession.shared.dataTask(with: url) {
            data, response, error in
            guard let data = data, let newImage = UIImage(data: data) else{
                print("couldnot load image from urly")
            }
        }
    }
}
