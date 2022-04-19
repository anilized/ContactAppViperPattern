//
//  ContactDetailPresenter.swift
//  ContactsApp
//
//  Created by Anil Can on 19.04.2022.
//

import Foundation

class ContactDetailPresenter : ContactDetailViewToPresenterProtocol {
    var contactDetailInteractor: ContactDetailPresenterToInteractorProtocol?
    
    func kisiGuncelle(kisi_id: Int, kisi_ad: String, kisi_tel: String) {
        contactDetailInteractor?.kisiGuncelle(kisi_id: kisi_id, kisi_ad: kisi_ad, kisi_tel: kisi_tel)
    }
    
    
}
