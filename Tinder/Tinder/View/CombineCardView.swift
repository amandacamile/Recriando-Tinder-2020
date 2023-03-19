//
//  CombineCardView.swift
//  Tinder
//
//  Created by Amanda Silva on 18/03/23.
//

import UIKit

class CombineCardView: UIView {
    let fotoImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "pessoa-1")
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        layer.borderWidth = 0.3
        layer.borderColor = UIColor.lightGray.cgColor
        layer.cornerRadius = 8
        clipsToBounds = true
        
        addSubview(fotoImageView)
        
        fotoImageView.preencherSuperview()
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
}
