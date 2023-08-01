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
        
        navigationItem.rightBarButtonItem = navBarButton
    }
    
    @objc func buttonPressed() {
        
    }
    
}
