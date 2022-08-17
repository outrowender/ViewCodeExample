//
//  TasksView.swift
//  ViewCodeExample
//
//  Created by Wender on 09/08/22.
//

import UIKit

protocol TasksViewDelegate {
    func taskTapped()
}

class TasksView: UIView {
    private var delegate: TasksViewDelegate?
    private var taskList: [TaskModel] = []
    
    lazy var tableView: UITableView = {
        let view = UITableView(frame: .zero)
        view.delegate = self
        view.dataSource = self
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    init(frame: CGRect, delegate: TasksViewDelegate? = nil) {
        self.delegate = delegate
        super.init(frame: frame)
        
        setupSuperView()
        setupHierarchy()
        setupConstraints()
    }
    
    func updateList(_ list: [TaskModel]){
        taskList = list
        tableView.reloadData()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // TODO: create a protocol for this
    private func setupSuperView(){
        self.backgroundColor = .systemBackground
    }
    
    private func setupHierarchy(){
        self.addSubview(tableView)
    }
    
    private func setupConstraints(){
        NSLayoutConstraint.activate([
            tableView.leadingAnchor.constraint(equalTo: leadingAnchor),
            tableView.topAnchor.constraint(equalTo: topAnchor),
            tableView.trailingAnchor.constraint(equalTo: trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }
}

extension TasksView: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return taskList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "cell_\(taskList[indexPath.row].title)_\(taskList[indexPath.row].subtitle)")
        cell.textLabel?.text = taskList[indexPath.row].title
        cell.detailTextLabel?.text = taskList[indexPath.row].subtitle
        return cell
    }
}

import SwiftUI
import UIViewCanvas

struct TasksViewPreview: PreviewProvider {
    static var previews: some View {
        ViewCanvas(for: TasksView(frame: .zero))
    }
}
