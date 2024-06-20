//
//  ProfileCoordinator.swift
//  MVP+C
//
//  Created by Alexander Suprun on 21.06.2024.
//

import Foundation
import UIKit

final class ProfileCoordinator: ICoordinator {
    private let navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        runMenuFlow()
    }
    
    func runMenuFlow() {
        let viewController = ProfileBuilder().assembly()
        navigationController.isNavigationBarHidden = true
        navigationController.pushViewController(viewController, animated: true)
    }
    
}
