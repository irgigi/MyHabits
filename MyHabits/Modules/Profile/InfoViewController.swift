//
//  InfoViewController.swift
//  MyHabits


import UIKit

let data = Text.make()

class InfoViewController: UIViewController {
    
    let scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.showsVerticalScrollIndicator = true
        scrollView.showsHorizontalScrollIndicator = false
        scrollView.backgroundColor = .white
        scrollView.isScrollEnabled = true
        return scrollView
    }()
    
    let contentView: UIView = {
        let contentView = UIView()
        contentView.backgroundColor = .white
        return contentView
    }()
    

    let infoTitleText: UILabel = {
        let text = UILabel()
        text.text = data[0].text //"Привычка за 21 день"
        text.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        text.textColor = .black
        text.backgroundColor = .white
        return text
    }()
    
    let infoText_1: UILabel = {
        let text = UILabel()
        text.numberOfLines = 0
        text.text = data[1].text
        text.font = UIFont.systemFont(ofSize: 17, weight: .regular)
        text.textColor = .black
        text.backgroundColor = .white
        return text
    }()
    
    let infoText_2: UILabel = {
        let text = UILabel()
        text.numberOfLines = 0
        text.lineBreakMode = .byWordWrapping
        text.text = data[2].text
        text.font = UIFont.systemFont(ofSize: 17, weight: .regular)
        text.textColor = .black
        text.backgroundColor = .white
        return text
    }()
    
    let infoText_3: UILabel = {
        let text = UILabel()
        text.numberOfLines = 0
        text.lineBreakMode = .byWordWrapping
        text.text = data[3].text
        text.font = UIFont.systemFont(ofSize: 17, weight: .regular)
        text.textColor = .black
        text.backgroundColor = .white
        return text
    }()
    
    let infoText_4: UILabel = {
        let text = UILabel()
        text.numberOfLines = 0
        text.lineBreakMode = .byWordWrapping
        text.text = data[4].text
        text.font = UIFont.systemFont(ofSize: 17, weight: .regular)
        text.textColor = .black
        text.backgroundColor = .white
        return text
    }()
    
    let infoText_5: UILabel = {
        let text = UILabel()
        text.numberOfLines = 0
        text.lineBreakMode = .byWordWrapping
        text.text = data[5].text
        text.font = UIFont.systemFont(ofSize: 17, weight: .regular)
        text.textColor = .black
        text.backgroundColor = .white
        return text
    }()
    
    let infoText_6: UILabel = {
        let text = UILabel()
        text.numberOfLines = 0
        text.lineBreakMode = .byWordWrapping
        text.text = data[6].text
        text.font = UIFont.systemFont(ofSize: 17, weight: .regular)
        text.textColor = .black
        text.backgroundColor = .white
        return text
    }()
    
    let infoText_7: UILabel = {
        let text = UILabel()
        text.numberOfLines = 0
        text.lineBreakMode = .byWordWrapping
        text.text = data[7].text
        text.font = UIFont.systemFont(ofSize: 17, weight: .regular)
        text.textColor = .black
        text.backgroundColor = .white
        return text
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Информация"
        let color = UIColor(red: 242/255.0, green: 242/255.0, blue: 247/255.0, alpha: 1.0)
        view.backgroundColor = color
        view.addSubview(scrollView)
        
        addSubViews()
        constraints()
    }
    
    func addSubViews() {
        
        scrollView.addSubview(contentView)
        contentView.addSubview(infoTitleText)
        contentView.addSubview(infoText_1)
        contentView.addSubview(infoText_2)
        contentView.addSubview(infoText_3)
        contentView.addSubview(infoText_4)
        contentView.addSubview(infoText_5)
        contentView.addSubview(infoText_6)
        contentView.addSubview(infoText_7)
        
    }
    
    func constraints() {
        let safeAreaGuide = view.safeAreaLayoutGuide
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        contentView.translatesAutoresizingMaskIntoConstraints = false
        infoTitleText.translatesAutoresizingMaskIntoConstraints = false
        infoText_1.translatesAutoresizingMaskIntoConstraints = false
        infoText_2.translatesAutoresizingMaskIntoConstraints = false
        infoText_3.translatesAutoresizingMaskIntoConstraints = false
        infoText_4.translatesAutoresizingMaskIntoConstraints = false
        infoText_5.translatesAutoresizingMaskIntoConstraints = false
        infoText_6.translatesAutoresizingMaskIntoConstraints = false
        infoText_7.translatesAutoresizingMaskIntoConstraints = false
        
        
        NSLayoutConstraint.activate([
            
            scrollView.topAnchor.constraint(equalTo: safeAreaGuide.topAnchor),
            scrollView.leadingAnchor.constraint(equalTo: safeAreaGuide.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: safeAreaGuide.trailingAnchor),
            scrollView.bottomAnchor.constraint(equalTo: safeAreaGuide.bottomAnchor),
            
            contentView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            contentView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 20),
            contentView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: -20),
            contentView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            contentView.widthAnchor.constraint(equalTo: scrollView.widthAnchor, multiplier: 0.9),
            
            infoTitleText.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 20),
            infoTitleText.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            infoTitleText.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            //infoTitleText.widthAnchor.constraint(equalTo: contentView.widthAnchor),
            //infoTitleText.heightAnchor.constraint(equalToConstant: 100),
            infoTitleText.bottomAnchor.constraint(equalTo: infoText_1.topAnchor, constant: -20),
            
            infoText_1.topAnchor.constraint(equalTo: infoTitleText.bottomAnchor, constant: 20),
            infoText_1.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            infoText_1.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            infoText_1.bottomAnchor.constraint(equalTo: infoText_2.topAnchor, constant: -20),
            
            infoText_2.topAnchor.constraint(equalTo: infoText_1.bottomAnchor),
            infoText_2.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            infoText_2.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            infoText_2.bottomAnchor.constraint(equalTo: infoText_3.topAnchor, constant: -20),
            
            infoText_3.topAnchor.constraint(equalTo: infoText_2.bottomAnchor),
            infoText_3.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            infoText_3.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            infoText_3.bottomAnchor.constraint(equalTo: infoText_4.topAnchor, constant: -20),
            
            infoText_4.topAnchor.constraint(equalTo: infoText_3.bottomAnchor),
            infoText_4.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            infoText_4.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            infoText_4.bottomAnchor.constraint(equalTo: infoText_5.topAnchor, constant: -20),
            
            infoText_5.topAnchor.constraint(equalTo: infoText_4.bottomAnchor),
            infoText_5.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            infoText_5.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            infoText_5.bottomAnchor.constraint(equalTo: infoText_6.topAnchor, constant: -20),
            
            infoText_6.topAnchor.constraint(equalTo: infoText_5.bottomAnchor),
            infoText_6.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            infoText_6.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            infoText_6.bottomAnchor.constraint(equalTo: infoText_7.topAnchor, constant: -20),
                                            
            infoText_7.topAnchor.constraint(equalTo: infoText_6.bottomAnchor),
            infoText_7.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            infoText_7.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            infoText_7.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
       
        ])
    }
    
    
    
}
