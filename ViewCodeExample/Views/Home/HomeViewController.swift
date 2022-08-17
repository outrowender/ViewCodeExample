//
//  HomeViewController.swift
//  ViewCodeExample
//
//  Created by Wender on 08/08/22.
//

import UIKit

class HomeViewController: UIViewController {

    override func loadView() {
        setupSuperView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func setupSuperView(){
        title = "TaskMan"
        navigationController?.navigationBar.prefersLargeTitles = true
        view = HomeView(frame: .zero, delegate: self)
    }

}

extension HomeViewController: HomeViewDelegate {
    func navigateButtonPressed() {
        navigationController?.pushViewController(TasksViewController(), animated: true)
    }
}
