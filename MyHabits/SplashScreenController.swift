//
//  SplashScreenController.swift
//  MyHabits


import UIKit

class SplashScreenController: UIViewController {
    
    let appImageView: UIImageView = {
        let image = UIImageView(frame: .zero)
        image.image = UIImage(named: "app")
        image.clipsToBounds = true
        image.layer.cornerRadius = 10
        return image
    }()
    
    let habitLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        label.textColor = UIColor(red: 161/255.0, green: 22/255.0, blue: 204/255.0, alpha: 1.0)
        label.text = "MyHabit"
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(appImageView)
        view.addSubview(habitLabel)
        setupConstraint()
        
        }
        
    override func viewDidAppear(_ animated: Bool) {
            super.viewDidAppear(animated)
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                let viewController = TabbarController()
                self.navigationController?.pushViewController(viewController, animated: true)
        }
    }
    
    func setupConstraint() {
        let safeAreaGuide = view.safeAreaLayoutGuide
        appImageView.translatesAutoresizingMaskIntoConstraints = false
        habitLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            
            //appImageView.topAnchor.constraint(equalTo: safeAreaGuide.topAnchor),
            appImageView.leftAnchor.constraint(equalTo: safeAreaGuide.leadingAnchor),
            appImageView.trailingAnchor.constraint(equalTo: safeAreaGuide.trailingAnchor),
            appImageView.bottomAnchor.constraint(equalTo: habitLabel.topAnchor),
            appImageView.centerXAnchor.constraint(equalTo: safeAreaGuide.centerXAnchor),
            appImageView.centerYAnchor.constraint(equalTo: safeAreaGuide.centerYAnchor),
            appImageView.widthAnchor.constraint(equalToConstant: 150),
            
            habitLabel.topAnchor.constraint(equalTo: appImageView.bottomAnchor, constant: -150),
            habitLabel.leftAnchor.constraint(equalTo: safeAreaGuide.leadingAnchor),
            habitLabel.trailingAnchor.constraint(equalTo: safeAreaGuide.trailingAnchor),
            habitLabel.bottomAnchor.constraint(equalTo: safeAreaGuide.bottomAnchor),
            habitLabel.centerXAnchor.constraint(equalTo: safeAreaGuide.centerXAnchor)
        
        ])
    }
    
}
