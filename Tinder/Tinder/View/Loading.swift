//
//  Loading.swift
//  Tinder
//
//  Created by Amanda Silva on 30/03/23.
//

import UIKit

class Loading: UIView {
    
    let loadingView: UIView = {
        let load = UIView()
        load.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        load.backgroundColor = UIColor(red: 218/255, green: 99/255, blue: 111/255, alpha: 1)
        load.layer.cornerRadius = 50
        load.layer.borderWidth = 1
        load.layer.borderColor = UIColor.red.cgColor
        return load
    }()
    
    let perfilImageView: UIImageView = {
       let imagem = UIImageView()
        imagem.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        imagem.layer.cornerRadius = 50
        imagem.layer.borderWidth = 5
        imagem.layer.borderColor = UIColor.white.cgColor
        imagem.clipsToBounds = true
        imagem.image = UIImage(named: "perfil")
        return imagem
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(loadingView)
        loadingView.center = center
        
        addSubview(perfilImageView)
        perfilImageView.center = center
        
        self.animacao()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
        
    func animacao() {
        UIView.animate(withDuration: 1.3, animations: {
            self.loadingView.frame = CGRect(x: 0, y: 0, width: 250, height: 250)
            self.loadingView.center = self.center
            self.loadingView.layer.cornerRadius = 125
            self.loadingView.alpha = 0.3
        }) { (_) in
            self.loadingView.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
            self.loadingView.center = self.center
            self.loadingView.layer.cornerRadius = 50
            self.loadingView.alpha = 1
            
            self.animacao()
        }
    }
    
}
