//
//  MainView.swift
//  ViewCodeExample
//
//  Created by Wender on 08/08/22.
//

import UIKit

class HomeView: UIView {

    lazy var helloLabel: UILabel = {
        let label = UILabel()
        label.text = "Hello world!"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupSuperView()
        setupHierarchy()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupSuperView(){
        self.backgroundColor = .systemBackground
    }
    
    func setupHierarchy(){
        self.addSubview(helloLabel)
    }
    
    func setupConstraints(){
        NSLayoutConstraint.activate([
            helloLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            helloLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor)
        ])
    }

}
