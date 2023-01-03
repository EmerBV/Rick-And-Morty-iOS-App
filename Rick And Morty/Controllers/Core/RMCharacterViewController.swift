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
         */
    }

}
