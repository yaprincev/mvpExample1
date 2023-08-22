//
//  MainViewProtocol.swift
//  mvpExample1
//
//  Created by Максим Япринцев on 22.08.2023.
//

import Foundation

protocol MainViewProtocol: AnyObject { // output
    func setGreetings(greeting: String)
}

protocol MainViewPresenterProtocol: AnyObject { // input
    init(view: MainViewProtocol, person: Person)
    func showGreeting()
}

class MainPresenter: MainViewPresenterProtocol {
    let view: MainViewProtocol
    let person: Person
    
    required init(view: MainViewProtocol, person: Person) {
        self.view = view
        self.person = person
    }
    
    func showGreeting() {
        let greeting = self.person.firstName + " " + self.person.lastName
        self.view.setGreetings(greeting: greeting)
    }
    
    
    
}
