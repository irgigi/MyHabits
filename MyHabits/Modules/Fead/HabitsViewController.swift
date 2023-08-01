//
//  HabitsViewController.swift
//  MyHabits


import UIKit

class HabitsViewController: UIViewController {
    
    var navBarButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupUI()
    }
    
    func setupUI() {
        
        navBarButton = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(buttonPressed))
        navBarButton.tintColor = UIColor(red: 161/255.0, green: 22/255.0, blue: 204/255.0, alpha: 1.0)
        navigationItem.rightBarButtonItem = navBarButton
    }
    
    @objc func buttonPressed() {
        
    }
    
}
