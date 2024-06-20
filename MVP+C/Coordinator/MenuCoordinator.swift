//
//  MenuCoordinator.swift
//  MVP+C
//
//  Created by Alexander Suprun on 20.06.2024.
//

import UIKit

final class MenuCoordinator: ICoordinator {
    private let navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        runMenuFlow()
    }
    
    func runMenuFlow() {
        let viewController = MenuBuilder().assembly()
        navigationController.isNavigationBarHidden = true
        navigationController.pushViewController(viewController, animated: true)
    }
    
}
