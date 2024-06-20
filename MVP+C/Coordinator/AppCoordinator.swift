//
//  AppCoordinator.swift
//  MVP+C
//
//  Created by Alexander Suprun on 20.06.2024.
//

import UIKit

final class AppCoordinator: BaseCoordinator {
    private let navigationController: UINavigationController

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    // MARK: Main navigation flow
    override func start() {
        runMainFlow()
    }
    // MARK: TabBar
    func runMainFlow() {
        let tabBarController = TabBarViewController()
        let coordinator = MainCoordinator(tabBarController: tabBarController)
        addChild(coordinator)
        coordinator.start()
        navigationController.isNavigationBarHidden = true
        navigationController.pushViewController(tabBarController, animated: true)
    }
}
