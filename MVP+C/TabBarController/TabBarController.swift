//
//  TabBarController.swift
//  MVP+C
//
//  Created by Alexander Suprun on 20.06.2024.
//

import UIKit

final class TabBarViewController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        settingTabBar()
    }
}

// MARK: Setting TabBarController
private extension TabBarViewController {
    func settingTabBar() {
        tabBar.backgroundColor = .white
        
        // MARK: calling and settings of each controller
        let controllers : [UINavigationController] = TabbarPage.allTabbarPages.map {
            getTabController($0)
        }
        
        setViewControllers(controllers, animated: true)
        selectedIndex = TabbarPage.firstTabbarPage.pageOrderNumber
    }
    // MARK: creates a controller instance
    func getTabController(_ page: TabbarPage) -> UINavigationController {
        let navController = UINavigationController()
        
        navController.tabBarItem = UITabBarItem(
            title: page.pageTitleValue(),
            image: page.pageIconValue(),
            tag: page.pageOrderNumber
        )
        
        return navController
    }
}
