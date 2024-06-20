//
//  ProfileViewController.swift
//  MVP+C
//
//  Created by Alexander Suprun on 21.06.2024.
//
import UIKit


protocol IProfileViewController: AnyObject {
    func viewReady()
}

final class ProfileViewController: UIViewController {
    var presenter: IProfilePresenter?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .cyan
        presenter?.loadData()

    }
}
extension ProfileViewController : IProfileViewController {
    func viewReady() {
        //
    }
}
