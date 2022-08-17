//
//  TasksViewController.swift
//  ViewCodeExample
//
//  Created by Wender on 09/08/22.
//

import UIKit

class TasksViewController: UIViewController {
    
    override func loadView() {
        setupSuperView()
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func setupSuperView(){
        self.view = TasksView(frame: .zero)
    }


}
