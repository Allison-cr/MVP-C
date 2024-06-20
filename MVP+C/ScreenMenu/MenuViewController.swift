//
//  MainViewController.swift
//  MVP+C
//
//  Created by Alexander Suprun on 20.06.2024.
//

import Foundation
import UIKit


protocol IMenuViewController: AnyObject {
    func viewReady()
}

final class MenuViewController: UIViewController {
    var presenter: IMenuPresenter?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .purple
        presenter?.loadData()

    }
}
extension MenuViewController : IMenuViewController {
    func viewReady() {
        //
    }
}
