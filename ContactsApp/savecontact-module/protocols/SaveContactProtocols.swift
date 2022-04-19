//
//  SaveContactProtocols.swift
//  ContactsApp
//
//  Created by Anil Can on 19.04.2022.
//

import Foundation

protocol ViewToPresenterSaveContactProtocol {
    var saveContactInteractor:PresenterToInteractorSaveContactProtocol? {get set}
    func ekle(kisi_ad:String, kisi_tel:String)
}


protocol PresenterToInteractorSaveContactProtocol {
    func kisiEkle(kisi_ad:String, kisi_tel:String)
}

protocol PresenterToRouterSaveContactProtocol {
    static func createModule(ref:SaveContactViewController)
}
