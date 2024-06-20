//
//  BasketPresenter.swift
//  MVP+C
//
//  Created by Alexander Suprun on 21.06.2024.
//

import Foundation

protocol IBasketPresenter: AnyObject {
    func loadData()
}

final class BasketPresenter: IBasketPresenter {
    private weak var viewController: IBasketViewController?
    
    func loadData() {
        viewController?.viewReady()
    }
}
