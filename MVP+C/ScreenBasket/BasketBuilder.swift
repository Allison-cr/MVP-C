//
//  BasketBuilder.swift
//  MVP+C
//
//  Created by Alexander Suprun on 21.06.2024.
//

import Foundation

final class BasketBuilder {
    func assembly() -> BasketViewController {
        let viewController = BasketViewController()
        let presenter = BasketPresenter()
        viewController.presenter = presenter
        return viewController
    }
}
