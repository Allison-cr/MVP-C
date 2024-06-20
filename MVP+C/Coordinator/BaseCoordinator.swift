//
//  BaseCoordinator.swift
//  MVP+C
//
//  Created by Alexander Suprun on 20.06.2024.
//

import Foundation


// MARK: Base start navigation for all coordinator
protocol ICoordinator: AnyObject {
    func start()
}

class BaseCoordinator: ICoordinator {
    //An array that stores child coordinators.
    /// This allows the parent coordinator to hold references to child coordinators,
    /// preventing them from being freed from memory prematurely.
    var childCoordinator: [ICoordinator] = []
    func start() {
    }
    
    // Adds a child coordinator to the array
    func addChild(_ coordinator: ICoordinator) {
        guard !childCoordinator.contains(where: { $0 === coordinator }) else { return }
        childCoordinator.append(coordinator)
    }
    
    // Delete a child coordinator to the array
    func removeChild(_ coordinator: ICoordinator) {
        guard !childCoordinator.isEmpty else { return }
        if let coordinator = coordinator as? BaseCoordinator, !coordinator.childCoordinator.isEmpty {
            coordinator.childCoordinator.forEach { coordinator.removeChild($0) }
        }
        if let index = childCoordinator.firstIndex(where: { $0 === coordinator }) {
            childCoordinator.remove(at: index)
        }
    }
}
