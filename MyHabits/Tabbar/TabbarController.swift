//
//  TabbarController.swift
//  MyHabits

import UIKit

class TabbarController: UITabBarController {
    
    // MARK: - Properties
    
    var habitsNavController: UINavigationController!
    var infoNavController: UINavigationController!
    
    // MARK: - Life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray
        setupUI()
        
    }
    
    // MARK: - Methods
    
    private func setupUI() {
        habitsNavController = UINavigationController.init(rootViewController: HabitsViewController())
        infoNavController = UINavigationController.init(rootViewController: InfoViewController())
        
        self.viewControllers = [habitsNavController, infoNavController]
        
        let item1 = UITabBarItem(title: "Привычки", image: UIImage(systemName: "rectangle.grid.1x2.fill"), tag: 0)
        
        let item2 = UITabBarItem(title: "Информация", image: UIImage(systemName: "info.circle.fill"), tag: 1)
        
        habitsNavController.tabBarItem = item1
        infoNavController.tabBarItem = item2
        
        UITabBar.appearance().tintColor = UIColor(red: 161/255.0, green: 22/255.0, blue: 204/255.0, alpha: 1.0)
        
    }
    
    
    
}

