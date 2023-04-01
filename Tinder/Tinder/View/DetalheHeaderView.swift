//
//  DetalheHeaderView.swift
//  Tinder
//
//  Created by Amanda Silva on 01/04/23.
//

import UIKit

class DetalheHeaderView: UICollectionReusableView {
    
    var usuario: Usuário? {
        didSet {
            if let usuario = usuario {
                fotoImageView.image = UIImage(named: usuario.foto)
            }
        }
    }
    
    var fotoImageView: UIImageView = .fotoImageView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(fotoImageView)
        fotoImageView.preencherSuperview()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
