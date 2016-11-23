//
// Created by AUTHOR
// Copyright (c) YEAR AUTHOR. All rights reserved.
//

import Foundation
import Quick
import Nimble
@testable import iFood

final class VIPERInteractorSpec: QuickSpec {

    // MARK: - Mocks

    fileprivate class PresenterMock: VIPERInteractorOutputProtocol {}
    fileprivate class APIDataManagerMock: VIPERAPIDataManagerInputProtocol {}
    fileprivate class LocalDataManagerMock: VIPERLocalDataManagerInputProtocol {}

    // MARK: - Tests

    override func spec(){
        describe("VIPERInteractor") {

            // MARK: - Properties

            var sut: VIPERInteractor!
            var presenterMock: PresenterMock!

            beforeEach {
                sut = VIPERInteractor()
                sut.APIDataManager = APIDataManagerMock()
                sut.localDatamanager = LocalDataManagerWithLocationMock()
                presenterMock = PresenterMock()
                sut.presenter = presenterMock
            }

            afterEach {
                sut = nil
                presenterMock = nil
            }
        }
    }
}
