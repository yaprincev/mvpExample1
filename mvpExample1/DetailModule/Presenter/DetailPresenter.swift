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
    init(view: DetailViewProtocol, networkService: NetworkServiceProtocol, comment: Comment?)
    func setComment()
}


class DetailPresenter: DetailViewPresenterProtocol {
    weak var view: DetailViewProtocol?
    let networkService: NetworkServiceProtocol!
    var comment: Comment?
    
    required init(view: DetailViewProtocol, networkService: NetworkServiceProtocol, comment: Comment?) {
        self.view = view
        self.networkService = networkService
        self.comment = comment
    }
    
    func setComment() {
        self.view?.setComment(comment: comment)
    }
}
































