//
//  ViewController.swift
//  AutoLayout
//
//  Created by Amanda Silva on 17/03/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let redView = UIView()
        redView.backgroundColor = .red
        
//        let blueView = UIView()
//        blueView.backgroundColor = .blue
//
//        let yellowView = UIView()
//        yellowView.backgroundColor = .yellow
        
        view.addSubview(redView)
//        view.addSubview(blueView)
        
//        redView.preencherSuperview(padding: .init(top: 50, left: 50, bottom: 50, right: 50))
        redView.centralizarSuperview(size: .init(width: 200, height: 200))
        
//        redView.preencher(
//            top: view.topAnchor,
//            bottom: view.bottomAnchor,
//            leading: view.leadingAnchor,
//            trailing: view.trailingAnchor
//        )
        
//        redView.translatesAutoresizingMaskIntoConstraints = false
//        redView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
//        redView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
//        redView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
//        redView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
//
//        redView.widthAnchor.constraint(equalToConstant: view.bounds.width / 2).isActive = true // aqui ele pega o tamanho da tela e divide no meio
//
//        blueView.translatesAutoresizingMaskIntoConstraints = false
//        blueView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
//        blueView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
//        blueView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
//
//        blueView.widthAnchor.constraint(equalToConstant: view.bounds.width / 2).isActive = true
        
//        let horizontalStackView = UIStackView(arrangedSubviews: [redView, blueView])
//        horizontalStackView.distribution = .fillEqually
//
//        let stackView: UIStackView = UIStackView(arrangedSubviews: [horizontalStackView, yellowView])
//        stackView.distribution = .fillEqually
//        stackView.axis = .vertical
//
//        view.addSubview(stackView)
//        stackView.translatesAutoresizingMaskIntoConstraints = false
//        stackView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
//        stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
//        stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
//        stackView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    }


}

