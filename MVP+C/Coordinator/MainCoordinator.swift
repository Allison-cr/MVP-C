//
//  MainCoordinator.swift
//  MVP+C
//
//  Created by Alexander Suprun on 20.06.2024.
//

import UIKit

final class MainCoordinator: BaseCoordinator {
    private let tabBarController: UITabBarController
    private let pages: [TabbarPage] = TabbarPage.allTabbarPages

    init(tabBarController: UITabBarController) {
        self.tabBarController = tabBarController
    }

    
    override func start() {
        tabBarController.viewControllers?.enumerated().forEach { item in
            guard let controller = item.element as? UINavigationController else { return }
            runMainFlow(item.offset, controller)
        }
    }
    
    // MARK: Create MenuCoordinator, BasketCoordinator
    func runMainFlow(_ index: Int, _ controller: UINavigationController) {
        let coordinator: ICoordinator
        switch pages[index] {
        case .main:
            coordinator = MenuCoordinator(navigationController: controller)
        case .basket:
            coordinator = BasketCoordinator(navigationController: controller)
        case .profile:
            coordinator = ProfileCoordinator(navigationController: controller)
        }
        addChild(coordinator)
        coordinator.start()
    }
}
