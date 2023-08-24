//
//  DetailPresenter.swift
//  mvpExample1
//
//  Created by Максим Япринцев on 23.08.2023.
//

import Foundation

protocol DetailViewProtocol: AnyObject { // output
    func setComment(comment: Comment?)
}

protocol DetailViewPresenterProtocol: AnyObject { // input
    init(view: DetailViewProtocol, networkService: NetworkServiceProtocol, router: RouterProtocol, comment: Comment?)
    func setComment()
    func tap()
}


class DetailPresenter: DetailViewPresenterProtocol {
    weak var view: DetailViewProtocol?
    let networkService: NetworkServiceProtocol!
    var router: RouterProtocol?
    var comment: Comment?
    
    required init(view: DetailViewProtocol, networkService: NetworkServiceProtocol, router: RouterProtocol, comment: Comment?) {
        self.view = view
        self.networkService = networkService
        self.router = router
        self.comment = comment
    }
    
    func tap() {
        router?.popToRoot() 
    }
    
    func setComment() {
        self.view?.setComment(comment: comment)
    }
}
































