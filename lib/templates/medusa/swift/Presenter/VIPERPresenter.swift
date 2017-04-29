//
// Created by AUTHOR
// Copyright (c) YEAR AUTHOR. All rights reserved.
//

import Foundation

final class VIPERPresenter: VIPERPresenterProtocol {

    // MARK: - Properties

    weak var view: VIPERViewProtocol?
    var interactor: VIPERInteractorInputProtocol?
    var router: VIPERRouterProtocol?

    // MARK: Initialization
    
    init() {}
}

// MARK: - VIPERInteractorOutputProtocol

extension VIPERPresenter: VIPERInteractorOutputProtocol {


}
