//
//  RMCharacterDetailViewViewModel.swift
//  Rick And Morty
//
//  Created by Emerson Balahan Varona on 5/1/23.
//

import Foundation

final class RMCharacterDetailViewViewModel {
    private let character: RMCharacter
    
    init(character: RMCharacter) {
        self.character = character
    }
    
    public var title: String {
        character.name.uppercased()
    }
}
