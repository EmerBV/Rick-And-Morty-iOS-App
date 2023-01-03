//
//  RMCharacterViewController.swift
//  Rick And Morty
//
//  Created by Emerson Balahan Varona on 2/1/23.
//

import UIKit

/// Controller to show and search for Characters
final class RMCharacterViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        title =  "Characters"
        
        // Para comprobar en consola que la respuesta del API funciona
        // Para printar un único personaje
        /*
        let request = RMRequest(
            endpoint: .character,
            //pathComponents: ["1"]
            queryParameters: [
                URLQueryItem(name: "name", value: "rick"),
                URLQueryItem(name: "status", value: "alive")
            ]
        )
        
        print(request.url)
        
        RMService.shared.execute(request, expecting: RMCharacter.self) { result in
            switch result {
            case .success:
                break
            case .failure(let error):
                print(String(describing: error))
            }
        }
         */
        
        RMService.shared.execute(.listCharactersRequests, expecting: RMGetAllCharactersResponse.self) { result in
            switch result {
            case .success(let model):
                //print(String(describing: model))
                print("Total: "+String(model.info.count))
                print("Total info pages: "+String(model.info.pages))
                print("Page result count: "+String(model.results.count))
            case .failure(let error):
                print(String(describing: error))
            }
        }
    }

}
