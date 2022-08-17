//
//  TasksViewController.swift
//  ViewCodeExample
//
//  Created by Wender on 09/08/22.
//

import UIKit

class TasksViewController: UIViewController {
    let tasksView = TasksView(frame: .zero)
    private let viewModel = TasksViewModel()
    
    override func loadView() {
        setupSuperView()
        
        viewModel.taskList.subscribe { list in
            self.tasksView.updateList(list)
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewModel.loadTasks()
    }
    
    func setupSuperView(){
        title = "Tasks"
        navigationController?.navigationBar.prefersLargeTitles = true
        view = tasksView
    }
}
