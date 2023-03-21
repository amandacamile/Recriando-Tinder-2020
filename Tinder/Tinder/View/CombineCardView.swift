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
    
    let nomeLabel: UILabel = .textBoldLabel(32, textColor: .white)
    let idadeLabel: UILabel = .textLabel(28, textColor: .white)
    let fraseLabel: UILabel = .textLabel(18, textColor: .white, numberOfLines: 2)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        layer.borderWidth = 0.3
        layer.borderColor = UIColor.lightGray.cgColor
        layer.cornerRadius = 8
        clipsToBounds = true
        
        nomeLabel.text = "Ana Laura"
        idadeLabel.text = "20"
        fraseLabel.text = "O último a dar match chama"
        
        nomeLabel.adicionaShadow()
        idadeLabel.adicionaShadow()
        fraseLabel.adicionaShadow()
        
        addSubview(fotoImageView)
        
        fotoImageView.preencherSuperview()
        
        let nomeIdadeStackView = UIStackView(arrangedSubviews: [nomeLabel, idadeLabel, UIView()])
        nomeIdadeStackView.spacing = 12
        
        let stackView = UIStackView(arrangedSubviews: [nomeIdadeStackView, fraseLabel])
        stackView.distribution = .fillEqually
        stackView.axis = .vertical
        
        addSubview(stackView)
        stackView.preencher(
            top: nil,
            bottom: bottomAnchor,
            leading: leadingAnchor,
            trailing: trailingAnchor,
            padding: .init(top: 0, left: 16, bottom: 16, right: 16)
        )
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
}
