//
// Created by AUTHOR
// Copyright (c) YEAR AUTHOR. All rights reserved.
//

import Foundation

final class VIPERRouter: VIPERRouterProtocol {

    // MARK: - Presenting

    static func presentVIPERModule(fromView view: AnyObject) {

        // Generating module components
        let view: VIPERViewProtocol = VIPERView()
        let presenter: VIPERPresenterProtocol & VIPERInteractorOutputProtocol = VIPERPresenter()
        let interactor: VIPERInteractorInputProtocol = VIPERInteractor()
        let APIDataManager: VIPERAPIDataManagerInputProtocol = VIPERAPIDataManager()
        let localDataManager: VIPERLocalDataManagerInputProtocol = VIPERLocalDataManager()
        let router: VIPERRouterProtocol = VIPERRouter()
        
        // Connecting
        view.presenter = presenter
        presenter.view = view
        presenter.router = router
        presenter.interactor = interactor
        interactor.presenter = presenter
        interactor.APIDataManager = APIDataManager
        interactor.localDatamanager = localDataManager
    }
}
