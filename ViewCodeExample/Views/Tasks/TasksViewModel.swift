//
//  TasksViewModel.swift
//  ViewCodeExample
//
//  Created by Wender on 09/08/22.
//

import Foundation

// final?
class TasksViewModel {
    var taskList = Observable<[TaskModel]>([])
    
    func loadTasks(){
        let tasks: [TaskModel] = [
            .init(title: "Comprar bosta", subtitle: "Extremamente necessário para adubar planta", priority: 1),
            .init(title: "Assitir video", subtitle: "Importante para o enriquecimento da alma", priority: 3),
        ]
        
        taskList.update(tasks)
    }
}
