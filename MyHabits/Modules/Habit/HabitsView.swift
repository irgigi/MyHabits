//
//  HabitsView.swift
//  MyHabits


import UIKit

class HabitsView: UIView {
    
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.preferredFont(forTextStyle: .largeTitle)
        //label.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        label.text = "Сегодня"
        return label
    }()
    
    private lazy var viewContent: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    convenience init (title: String) {
        self.init(frame: .zero)
    }
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        addSubview(viewContent)
        viewContent.addSubview(titleLabel)
        setupConstraints()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            
            viewContent.topAnchor.constraint(equalTo: topAnchor),
            viewContent.leadingAnchor.constraint(equalTo: leadingAnchor),
            viewContent.trailingAnchor.constraint(equalTo: trailingAnchor),
            viewContent.bottomAnchor.constraint(equalTo: bottomAnchor),
            viewContent.widthAnchor.constraint(equalTo: widthAnchor),
            
            titleLabel.leadingAnchor.constraint(equalTo: viewContent.leadingAnchor, constant: 20),
            titleLabel.widthAnchor.constraint(equalTo: viewContent.widthAnchor),
            titleLabel.trailingAnchor.constraint(equalTo: viewContent.trailingAnchor, constant: -20),
            titleLabel.topAnchor.constraint(equalTo: viewContent.topAnchor, constant: 20),
        ])
    }
    
}
