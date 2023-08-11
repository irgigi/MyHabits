//
//  SplashScreenController.swift
//  MyHabits


import UIKit

class SplashScreenController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        }
        
    override func viewDidAppear(_ animated: Bool) {
            super.viewDidAppear(animated)
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                let viewController = TabbarController()
                self.navigationController?.pushViewController(viewController, animated: true)
        }
    }
    
    
    
}
