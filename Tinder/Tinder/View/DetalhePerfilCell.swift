//
//  DetalhePerfilCell.swift
//  Tinder
//
//  Created by Amanda Silva on 01/04/23.
//

import UIKit

class DetalhePerfilCell: UICollectionViewCell {
    
    var usuario: Usuário? {
        didSet {
            if let usuario = usuario {
                nomeLabel.text = usuario.nome
                idadeLabel.text = String(usuario.idade)
                fraseLabel.text = usuario.frase
            }
        }
    }
    
    
    let nomeLabel: UILabel = .textBoldLabel(32)
    let idadeLabel: UILabel = .textLabel(28)
    let fraseLabel: UILabel = .textLabel(18, numberOfLines: 2)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        let nomeIdadeStackView = UIStackView(arrangedSubviews: [nomeLabel, idadeLabel, UIView()])
        nomeIdadeStackView.spacing = 12
        
        let stackView = UIStackView(arrangedSubviews: [nomeIdadeStackView, fraseLabel])
        stackView.distribution = .fillEqually
        stackView.axis = .vertical
        
        addSubview(stackView)
        stackView.preencherSuperview(padding: .init(top: 20, left: 20, bottom: 20, right: 20))
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
}
