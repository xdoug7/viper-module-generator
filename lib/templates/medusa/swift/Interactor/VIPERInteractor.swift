//
// Created by AUTHOR
// Copyright (c) YEAR AUTHOR. All rights reserved.
//

import Foundation

final class VIPERInteractor: VIPERInteractorInputProtocol {

    // MARK: - Properties

    weak var presenter: VIPERInteractorOutputProtocol?
    var APIDataManager: VIPERAPIDataManagerInputProtocol?
    var localDatamanager: VIPERLocalDataManagerInputProtocol?

    // MARK: - Initialization
    
    init() {}
}