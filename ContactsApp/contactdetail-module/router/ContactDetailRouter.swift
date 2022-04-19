//
//  ContactDetailRouter.swift
//  ContactsApp
//
//  Created by Anil Can on 19.04.2022.
//

import Foundation

class ContactDetailRouter: ContactDetailPresenterToRouterProtocol {
    static func createModule(ref: ContactDetailViewController) {
        ref.contactDetailPresenter = ContactDetailPresenter()
        ref.contactDetailPresenter?.contactDetailInteractor = ContactDetailInteractor()
    }
}
