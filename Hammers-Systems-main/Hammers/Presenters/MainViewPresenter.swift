//
//  MainViewPresenter.swift
//  Hammers
//
//  Created by MacBook on 22.06.2023.
//

import Foundation

protocol MainViewPresenterDelegate: AnyObject {
    func reloadTable()
}

class MainViewPresenter {
    
    weak var delegate: MainViewPresenterDelegate?
    var data: [MenuItem] = []
    
    init(delegate: MainViewPresenterDelegate) {
        self.delegate = delegate
    }
    
    func loadData() {
        Networking.getMenu { pizzas in
            self.data = pizzas
            DispatchQueue.main.async {
                self.delegate?.reloadTable()
            }
        }
    }
    
}
