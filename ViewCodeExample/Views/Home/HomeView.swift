//
//  MainView.swift
//  ViewCodeExample
//
//  Created by Wender on 08/08/22.
//

import UIKit

// MARK: Delegate
protocol HomeViewDelegate: AnyObject {
    func navigateButtonPressed()
}

// MARK: View
class HomeView: UIView {
    
    private var delegate: HomeViewDelegate?

    lazy var helloLabel: UILabel = {
        let label = UILabel()
        label.text = "Use this great app to manage your tasks."
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var taskButton: UIButton = {
        var config = UIButton.Configuration.filled()
        config.title = "Let's GO!"
        let button = UIButton(configuration: config)
        button.addTarget(self, action: #selector(taskButtonPressed), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    init(frame: CGRect, delegate: HomeViewDelegate? = nil) {
        self.delegate = delegate
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
        addSubview(helloLabel)
        addSubview(taskButton)
    }
    
    func setupConstraints(){
        NSLayoutConstraint.activate([
            helloLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
            helloLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            taskButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            taskButton.topAnchor.constraint(equalTo: helloLabel.bottomAnchor, constant: 8)
        ])
    }

}

// MARK: View actions
extension HomeView {
    @objc func taskButtonPressed(){
        delegate?.navigateButtonPressed()
    }
}

import SwiftUI
import UIViewCanvas

struct HomeViewPreview: PreviewProvider {
    static var previews: some View {
        ViewCanvas(for: HomeView(frame: .zero))
    }
}
