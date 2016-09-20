//
// Created by AUTHOR
// Copyright (c) YEAR AUTHOR. All rights reserved.
//

import Foundation

// MARK: - Protocols

// MARK: VIPERViewProtocol

protocol VIPERViewProtocol: class {

    // MARK: - Properties

    var presenter: VIPERPresenterProtocol? { get set }

    /**
    * Add here your methods for communication PRESENTER -> VIEW
    */
}

// MARK: VIPERRouterProtocol

protocol VIPERRouterProtocol: class {

    // MARK: - Presentation
    
    static func presentVIPERModule(fromView view: AnyObject)

    /**
    * Add here your methods for communication PRESENTER -> ROUTER
    */
}

// MARK: VIPERPresenterProtocol

protocol VIPERPresenterProtocol: class {

    // MARK: - Properties

    var view: VIPERViewProtocol? { get set }
    var interactor: VIPERInteractorInputProtocol? { get set }
    var router: VIPERRouterProtocol? { get set }

    /**
    * Add here your methods for communication VIEW -> PRESENTER
    */
}

// MARK: VIPERInteractorOutputProtocol

protocol VIPERInteractorOutputProtocol: class {

    /**
    * Add here your methods for communication INTERACTOR -> PRESENTER
    */
}

// MARK: VIPERInteractorInputProtocol

protocol VIPERInteractorInputProtocol: class {

    // MARK: - Properties

    var presenter: VIPERInteractorOutputProtocol? { get set }
    var APIDataManager: VIPERAPIDataManagerInputProtocol? { get set }
    var localDatamanager: VIPERLocalDataManagerInputProtocol? { get set }

    /**
    * Add here your methods for communication PRESENTER -> INTERACTOR
    */
}

// MARK: VIPERDataManagerInputProtocol

protocol VIPERDataManagerInputProtocol: class {

    /**
    * Add here your methods for communication INTERACTOR -> DATAMANAGER
    */
}

// MARK: VIPERAPIDataManagerInputProtocol

protocol VIPERAPIDataManagerInputProtocol: class {

    /**
    * Add here your methods for communication INTERACTOR -> APIDATAMANAGER
    */
}

// MARK: VIPERLocalDataManagerInputProtocol

protocol VIPERLocalDataManagerInputProtocol: class {

    /**
    * Add here your methods for communication INTERACTOR -> LOCALDATAMANAGER
    */
}
