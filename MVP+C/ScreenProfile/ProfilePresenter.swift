//
//  ProfilePresenter.swift
//  MVP+C
//
//  Created by Alexander Suprun on 21.06.2024.
//

import Foundation

protocol IProfilePresenter: AnyObject {
    func loadData()
}

final class ProfilePresenter: IProfilePresenter {
    private weak var viewController: IProfileViewController?
    
    func loadData() {
        viewController?.viewReady()
    }
}
