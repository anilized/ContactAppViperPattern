//
//  SaveContactInteractor.swift
//  ContactsApp
//
//  Created by Anil Can on 19.04.2022.
//

import Foundation

class SaveContactInteractor : PresenterToInteractorSaveContactProtocol {

    // CRUD OPS
    func kisiEkle(kisi_ad: String, kisi_tel: String) {
        print("Save: \(kisi_ad) \(kisi_tel)")
    }
    
    
}
