//
//  main.swift
//  JanKenPo
//
//  Created by Adriano Rodrigues Vieira on 22/04/20.
//  Copyright © 2020 Adriano Rodrigues Vieira. All rights reserved.
//

import Foundation

struct Item {
    let nome: String
    let ganhaDe: String
    let perdePara: String
    
    func verificaVitoria(contra oponente: String) -> String {
        if self.nome == oponente{
            return "empate"
        } else if self.ganhaDe == oponente {
            return "Voce venceu, pois \(self.nome) ganha de \(oponente)!"
        }
        
        return "Computador venceu, pois \(oponente) ganha de \(self.nome)"
    }
}


let pedra = Item(nome: "pedra", ganhaDe: "tesoura", perdePara: "papel")
let papel = Item(nome: "papel", ganhaDe: "pedra", perdePara: "tesoura")
let tesoura = Item(nome: "tesoura", ganhaDe: "papel", perdePara: "pedra")
let possiveisJogadas = [pedra, papel, tesoura]

print("JO KEN PO")
print("Digite 0 para pedra, 1 para papel ou 2 para tesoura")

var ehNumeroValidoEntreZeroEDois = false
while !ehNumeroValidoEntreZeroEDois {
    let respostaDoUsuario = readLine()!
    
    if let respostaDoUsuarioEmInteiro = Int(respostaDoUsuario) {
        if respostaDoUsuarioEmInteiro < 3 || respostaDoUsuarioEmInteiro > -1 {
            let respostaDaCPU = Int.random(in: 0...2)
            let itemCPU = possiveisJogadas[respostaDaCPU]
            let itemUsuario = possiveisJogadas[respostaDoUsuarioEmInteiro]
                        
            print("Jo")
            sleep(1)
            print("Ken")
            sleep(1)
            print("Po!")
            sleep(1)
            
            print("\nSua jogada: \(itemUsuario.nome)")
            print("Jogada da CPU: \(itemCPU.nome)")
            
            print("\nRESULTADO......")
            print(itemUsuario.verificaVitoria(contra: itemCPU.nome))
        }
    }
}







