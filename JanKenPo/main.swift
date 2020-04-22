//
//  main.swift
//  JanKenPo
//
//  Created by Adriano Rodrigues Vieira on 22/04/20.
//  Copyright © 2020 Adriano Rodrigues Vieira. All rights reserved.
//

import Foundation

func jogadorVenceu(entre jogador: String, e oponente: String) -> Bool {
    switch jogador {
    case "j":
        if oponente == "p" {
            return true
        } else {
            return false
        }
    case "k":
        if oponente == "j" {
            return true
        } else {
            return false
        }
    case "p":
        if oponente == "k" {
            return true
        } else {
            return false
        }
        
    default:
        return false
    }
}

print("JAN KEN PO")
print("Digite j para pedra, k para papel ou po para tesoura")
let op = readLine()

let opcoes = ["j", "k", "p"]
let opcaoOponente = opcoes[Int.random(in: 0...2)]

if let opcao = op {
    if opcoes.contains(opcao) {
        if opcao == opcaoOponente {
            print("Empate! \(opcao) vs \(opcaoOponente)")
        } else {
            if jogadorVenceu(entre: opcao, e: opcaoOponente) {
                print("Voce Venceu! \(opcao) vs \(opcaoOponente)")
            } else {
                print("Oponente Venceu! \(opcaoOponente) vs \(opcao)")
            }
        }
    }
}





