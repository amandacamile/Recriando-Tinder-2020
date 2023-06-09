//
//  UsuariosService.swift
//  Tinder
//
//  Created by Amanda Silva on 22/03/23.
//

import Foundation


class UsuariosService {
    static let shared = UsuariosService()
    
    let usuarios: [Usuário] = [
        Usuário(id: 101, nome: "Maria Silva", idade: 19, match: true, frase: "O último a dar match chama", foto: "pessoa-1"),
        Usuário(id: 102, nome: "Debora Lima", idade: 25, match: false, frase: "Deu like sem querer?", foto: "pessoa-2"),
        Usuário(id: 103, nome: "Sandra Souza", idade: 24, match: false, frase: "Acho q a gente combina", foto: "pessoa-3"),
        Usuário(id: 104, nome: "Anna Beatriz", idade: 22, match: true, frase: "Não bebo não fumo e não curto balada", foto: "pessoa-4"),
        Usuário(id: 105, nome: "Laura Oliveira", idade: 26, match: true, frase: "Quer saber mais sobre mim?", foto: "pessoa-5"),
        Usuário(id: 106, nome: "Silva Paz", idade: 19, match: false, frase: "Se não for conversar nem dá like", foto: "pessoa-6"),
        Usuário(id: 107, nome: "Debora Lima", idade: 25, match: false, frase: "Em busca de novas amizades", foto: "pessoa-7"),
        Usuário(id: 108, nome: "Sandra Souza", idade: 24, match: true, frase: "Fotos sem camisa não me impressionam", foto: "pessoa-8"),
        Usuário(id: 109, nome: "Tah Beatriz", idade: 22, match: false, frase: "Oi pelo visto a gente combina", foto: "pessoa-9"),
        Usuário(id: 110, nome: "Laura Oliveira", idade: 26, match: true, frase: "Procurando um bom papo", foto: "pessoa-10"),
        Usuário(id: 111, nome: "Sabrina Santos", idade: 21, match: false, frase: "Quem se descreve se limita", foto: "pessoa-11"),
        Usuário(id: 112, nome: "Amelia Margaret", idade: 30, match: false, frase: "Não quero nada casual", foto: "pessoa-12"),
        Usuário(id: 113, nome: "Laura Komako", idade: 26, match: true, frase: "Bom humor é fundamental", foto: "pessoa-13"),
        Usuário(id: 114, nome: "Rosa Oliveira", idade: 25, match: false, frase: "Não sei me descrever", foto: "pessoa-14"),
        Usuário(id: 115, nome: "Nadia Joana", idade: 20, match: false, frase: "Quer saber mais? é só dar like", foto: "pessoa-15"),
        Usuário(id: 116, nome: "Mary Dandara", idade: 20, match: false, frase: "Tenho um relacionamento aberto", foto: "pessoa-16"),
        Usuário(id: 117, nome: "Anita Eleanor", idade: 23, match: false, frase: "Bonita demais pra ser verdade", foto: "pessoa-17"),
        Usuário(id: 118, nome: "Helen Aung San", idade: 24, match: true, frase: "Espero q vc seja mente aberta", foto: "pessoa-18"),
        Usuário(id: 119, nome: "Laura Nelle", idade: 18, match: false, frase: "Estou aqui para fazer novas amizades", foto: "pessoa-19"),
        Usuário(id: 120, nome: "Maria Virginia", idade: 18, match: false, frase: "Adoro balada", foto: "pessoa-20")
    ]
    
    func buscaUsuarios(completion: @escaping ([Usuário]?, Error?) -> ()) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.0) {
            completion(self.usuarios, nil)
        }
    }
}
