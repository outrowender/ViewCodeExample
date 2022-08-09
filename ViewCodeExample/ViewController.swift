//
//  ViewController.swift
//  ViewCodeExample
//
//  Created by Wender on 08/08/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        setupSuperView()
    }
    
    func setupSuperView(){
        self.view = HomeView(frame: .zero)
    }

}

