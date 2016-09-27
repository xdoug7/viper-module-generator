//
// Created by AUTHOR
// Copyright (c) YEAR AUTHOR. All rights reserved.
//

import Foundation

// MARK: - Protocols

// MARK: VIPERPresenterProtocol
// VIEW -> PRESENTER
protocol VIPERPresenterProtocol: class {

    // MARK: - Properties

    var view: VIPERViewProtocol? { get set }
    var interactor: VIPERInteractorInputProtocol? { get set }
    var router: VIPERRouterProtocol? { get set }
}

// MARK: VIPERViewProtocol
// PRESENTER -> VIEW
protocol VIPERViewProtocol: class {

    // MARK: - Properties

    var presenter: VIPERPresenterProtocol? { get set }
}

// MARK: VIPERRouterProtocol
// PRESENTER -> ROUTER
protocol VIPERRouterProtocol: class {

    // MARK: - Presentation
    
    static func presentVIPERModule(fromView view: AnyObject)
}

// MARK: VIPERInteractorInputProtocol
// PRESENTER -> INTERACTOR
protocol VIPERInteractorInputProtocol: class {

    // MARK: - Properties

    var presenter: VIPERInteractorOutputProtocol? { get set }
    var APIDataManager: VIPERAPIDataManagerInputProtocol? { get set }
    var localDatamanager: VIPERLocalDataManagerInputProtocol? { get set }
}

// MARK: VIPERInteractorOutputProtocol
// INTERACTOR -> PRESENTER
protocol VIPERInteractorOutputProtocol: class { }

// MARK: VIPERDataManagerInputProtocol
// INTERACTOR -> DATAMANAGER
protocol VIPERDataManagerInputProtocol: class { }

// MARK: VIPERAPIDataManagerInputProtocol
// INTERACTOR -> APIDATAMANAGER
protocol VIPERAPIDataManagerInputProtocol: class { }

// MARK: VIPERLocalDataManagerInputProtocol
// INTERACTOR -> LOCALDATAMANAGER
protocol VIPERLocalDataManagerInputProtocol: class { }
