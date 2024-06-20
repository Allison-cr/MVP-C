//
//  MainPresenter.swift
//  MVP+C
//
//  Created by Alexander Suprun on 20.06.2024.
//

import Foundation

protocol IMenuPresenter: AnyObject {
    func loadData()
}

final class MenuPresenter: IMenuPresenter {
    private weak var viewController: IMenuViewController?
    
    func loadData() {
        viewController?.viewReady()
    }
}
