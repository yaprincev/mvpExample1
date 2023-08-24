//
//  MainPresenter.swift
//  mvpExample1
//
//  Created by Максим Япринцев on 22.08.2023.
//

import Foundation

protocol MainViewProtocol: AnyObject { // output
    func success()
    func failure(error: Error)
}

protocol MainViewPresenterProtocol: AnyObject { // input
    init(view: MainViewProtocol, networkService: NetworkServiceProtocol, router: RouterProtocol)
    func getComments()
    var comments: [Comment]? { get set }
    func tapOnTheComment(comment: Comment?)
}

class MainPresenter: MainViewPresenterProtocol {
    weak var view: MainViewProtocol?
    var router: RouterProtocol?
    let networkService: NetworkServiceProtocol!
    var comments: [Comment]?
    
    required init(view: MainViewProtocol, networkService: NetworkServiceProtocol, router: RouterProtocol) {
        self.view = view
        self.networkService = networkService
        self.router = router
        getComments()
    }
    func tapOnTheComment(comment: Comment?) {
        router?.showDetail(comment: comment)
    }
    
    func getComments() {
        networkService.getComments { [weak self] result in
            guard let self = self else { return }
            switch result {
            case .success(let comments):
                self.comments = comments
                self.view?.success()
            case .failure(let error):
                self.view?.failure(error: error)
            }
        }
    }
    
}
































