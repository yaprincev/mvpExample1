//
//  ModuleBuilder.swift
//  mvpExample1
//
//  Created by Максим Япринцев on 22.08.2023.
//

import Foundation
import UIKit

protocol Builder {
    static func createMainModule() -> UIViewController
}


class ModelBuilder: Builder {
    static func createMainModule() -> UIViewController {
        let view = MainViewController()
        let networkService = NetrworkService()
        let presenter = MainPresenter(view: view, networkService: networkService)
        view.presenter = presenter
        return view
    }
}
