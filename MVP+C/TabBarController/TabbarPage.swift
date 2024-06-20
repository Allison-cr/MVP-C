//
//  TabbarPage.swift
//  MVP+C
//
//  Created by Alexander Suprun on 20.06.2024.
//

import UIKit

enum TabbarPage {
    case main
    case basket
    case profile
    
    func pageTitleValue() -> String {
        switch self {
        case .main:
            return "Главная"
        case .basket:
            return "Корзина"
        case .profile:
            return "Профиль"
        }
    }
    
    func pageIconValue() -> UIImage {
        switch self {
        case .main:
            return UIImage(resource: .icontabbarmain)
        case .basket:
            return UIImage(resource: .baskettabbarico)
        case .profile:
            return UIImage(systemName: "person.fill") ?? UIImage()
        }
    }
    static let allTabbarPages: [TabbarPage] = [.main, .basket, .profile]
    static let firstTabbarPage: TabbarPage = .main
    
    var pageOrderNumber: Int {
        guard let num = TabbarPage.allTabbarPages.firstIndex(of: self) else { return .zero }
        return num
    }
}
