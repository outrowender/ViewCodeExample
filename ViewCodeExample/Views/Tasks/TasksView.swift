//
//  TasksView.swift
//  ViewCodeExample
//
//  Created by Wender on 09/08/22.
//

import UIKit

class TasksView: UIView {

    lazy var helloLabel: UILabel = {
        let label = UILabel()
        label.text = "Hello Tasks!"
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

import SwiftUI
import UIViewCanvas

struct TasksViewPreview: PreviewProvider {
    static var previews: some View {
        ViewCanvas(for: TasksView(frame: .zero))
    }
}
