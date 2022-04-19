//
//  SaveContactRouter.swift
//  ContactsApp
//
//  Created by Anil Can on 19.04.2022.
//

import Foundation

class SaveContactRouter : PresenterToRouterSaveContactProtocol {
    static func createModule(ref: SaveContactViewController) {
        ref.saveContactPresenter = SaveContactPresenter()
        ref.saveContactPresenter?.saveContactInteractor = SaveContactInteractor()
    }
}
