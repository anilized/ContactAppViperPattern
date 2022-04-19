//
//  ContactDetailProtocols.swift
//  ContactsApp
//
//  Created by Anil Can on 19.04.2022.
//

import Foundation

protocol ContactDetailViewToPresenterProtocol {
    var contactDetailInteractor:ContactDetailPresenterToInteractorProtocol? {get set}
    func kisiGuncelle(kisi_id:Int,kisi_ad:String,kisi_tel:String)
}

protocol ContactDetailPresenterToInteractorProtocol {
    func kisiGuncelle(kisi_id:Int,kisi_ad:String,kisi_tel:String)
}

protocol ContactDetailPresenterToRouterProtocol {
    static func createModule(ref:ContactDetailViewController)
}
