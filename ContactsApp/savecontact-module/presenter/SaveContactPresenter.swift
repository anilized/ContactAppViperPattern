//
//  SaveContactPresenter.swift
//  ContactsApp
//
//  Created by Anil Can on 19.04.2022.
//

import Foundation

class SaveContactPresenter: ViewToPresenterSaveContactProtocol {
    
    var saveContactInteractor: PresenterToInteractorSaveContactProtocol?
    
    // RUN INTERACTOR CRUD OPS
    func ekle(kisi_ad: String, kisi_tel: String) {
        saveContactInteractor?.kisiEkle(kisi_ad: kisi_ad, kisi_tel: kisi_tel)
    }
    
    
}
