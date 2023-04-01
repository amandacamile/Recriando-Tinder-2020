//
//  DetalheFotosCell.swift
//  Tinder
//
//  Created by Amanda Silva on 01/04/23.
//

import UIKit

class DetalheFotosCell: UICollectionViewCell {
    
    let descricaoLabel: UILabel = .textBoldLabel(16)
    
    let slideFotosVC = SlideFotosVC()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        descricaoLabel.text = "Fotos recentes Instagram"
        
        addSubview(descricaoLabel)
        descricaoLabel.preencher(
            top: topAnchor,
            bottom: nil,
            leading: leadingAnchor,
            trailing: trailingAnchor,
            padding: .init(top: 0, left: 20, bottom: 0, right: 20)
        )
        
        addSubview(slideFotosVC.view)
        slideFotosVC.view.preencher(
            top: descricaoLabel.bottomAnchor,
            bottom: bottomAnchor,
            leading: leadingAnchor,
            trailing: trailingAnchor
        )
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
