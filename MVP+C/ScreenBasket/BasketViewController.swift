//
//  BasketViewController.swift
//  MVP+C
//
//  Created by Alexander Suprun on 21.06.2024.
//

import UIKit


protocol IBasketViewController: AnyObject {
    func viewReady()
}

final class BasketViewController: UIViewController {
    var presenter: IBasketPresenter?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow
        presenter?.loadData()

    }
}
extension BasketViewController : IBasketViewController {
    func viewReady() {
        //
    }
}
