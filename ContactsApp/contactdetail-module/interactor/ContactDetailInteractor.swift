//
//  ContactDetailInteractor.swift
//  ContactsApp
//
//  Created by Anil Can on 19.04.2022.
//

import Foundation

class ContactDetailInteractor : ContactDetailPresenterToInteractorProtocol {
    func kisiGuncelle(kisi_id: Int, kisi_ad: String, kisi_tel: String) {
        print("Contact update: \(kisi_id) - \(kisi_ad) - \(kisi_tel)")
    }
    
    
}
