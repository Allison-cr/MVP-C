//
//  MainBuilder.swift
//  MVP+C
//
//  Created by Alexander Suprun on 20.06.2024.
//

import Foundation

final class MenuBuilder {
    func assembly() -> MenuViewController {
        let viewController = MenuViewController()
        let presenter = MenuPresenter()
        viewController.presenter = presenter
        return viewController
    }
}
