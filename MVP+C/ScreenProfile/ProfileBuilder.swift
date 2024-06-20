//
//  ProfileBuilder.swift
//  MVP+C
//
//  Created by Alexander Suprun on 21.06.2024.
//

import Foundation

final class ProfileBuilder {
    func assembly() -> ProfileViewController {
        let viewController = ProfileViewController()
        let presenter = ProfilePresenter()
        viewController.presenter = presenter
        return viewController
    }
}
