//
//  HabitsViewController.swift
//  MyHabits


import UIKit

class HabitsViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    
    let habitsView = HabitsView()
    var progressCell: ProgressCollectionViewCell?
    
    var navBarButton: UIBarButtonItem!
    
    private enum CellReuseID: String {
        case base = "BaseTabelView_ID"
        case custom = "CustomTabelView_ID"
    }
    
    lazy var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.layer.cornerRadius = 10
        collectionView.contentInset = UIEdgeInsets(top: 20, left: 20, bottom: 10, right: 20)
        collectionView.backgroundColor = myColorGray
        collectionView.register(ProgressCollectionViewCell.self, forCellWithReuseIdentifier: CellReuseID.base.rawValue)
        collectionView.register(HabitCollectionViewCell.self,forCellWithReuseIdentifier: CellReuseID.custom.rawValue)
        
        collectionView.dataSource = self
        collectionView.delegate = self
        return collectionView
    }()
    
    
    //MARK: -INIT
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        setupUI()
        addSubviews()
        setupConstraints()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        HabitsStore.shared.fetchHabits {
            collectionView.reloadData()
        }
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    //MARK: -setup
    
    func addSubviews() {
        view.addSubview(habitsView)
        view.addSubview(collectionView)
    }
    
    func setupUI() {
        
        navBarButton = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(buttonPressed))
        navBarButton.tintColor = myColorPurpl
        navigationItem.rightBarButtonItem = navBarButton
    }
    
    @objc func buttonPressed() {
        
        let habitViewController = HabitViewController.init()
        let navigationController = UINavigationController(rootViewController: habitViewController)
        navigationController.modalPresentationStyle = .automatic
        present(navigationController, animated: true)
    }
    
    

    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        if section == 1 {
            return HabitsStore.shared.habits.count
        }
        return 1
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if indexPath.section == 0 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CellReuseID.base.rawValue, for: indexPath) as! ProgressCollectionViewCell
            progressCell = cell
            cell.update()
            return cell
        }
        
        if indexPath.section == 1 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CellReuseID.custom.rawValue, for: indexPath) as! HabitCollectionViewCell
            let habit = HabitsStore.shared.habits[indexPath.row]
            cell.update(with: habit, progressCell: progressCell)
            return cell
        }
        return UICollectionViewCell()
         
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if indexPath.section == 1 {
            let habit = HabitsStore.shared.habits[indexPath.row]
            let habitDetailVC = HabitDetailsViewController(habit: habit)
            navigationController?.pushViewController(habitDetailVC, animated: true)
        }
    }
    
    private func setupConstraints() {
        
        let safeAreaGuide = view.safeAreaLayoutGuide
        habitsView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            
            habitsView.topAnchor.constraint(equalTo: view.topAnchor, constant: 80),
            habitsView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            habitsView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            habitsView.heightAnchor.constraint(equalToConstant: 200),
            habitsView.bottomAnchor.constraint(equalTo: safeAreaGuide.topAnchor, constant: -20),
            
            collectionView.leadingAnchor.constraint(equalTo: safeAreaGuide.leadingAnchor),
            collectionView.trailingAnchor.constraint(equalTo: safeAreaGuide.trailingAnchor),
            collectionView.topAnchor.constraint(equalTo: safeAreaGuide.topAnchor, constant: 50),
            collectionView.bottomAnchor.constraint(equalTo: safeAreaGuide.bottomAnchor),
            
            //collectionView.centerXAnchor.constraint(equalTo: safeAreaGuide.centerXAnchor)
           
        ])
        
        
    }
}

extension HabitsViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let screenWidth = view.bounds.size.width
        if indexPath.section == 0 {
            return CGSize(width: screenWidth, height: 60)
        }
        return CGSize(width: screenWidth, height: 130)
    }
}
