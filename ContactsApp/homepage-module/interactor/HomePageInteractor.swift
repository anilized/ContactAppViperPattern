//
//  HomePageInteractor.swift
//  ContactsApp
//
//  Created by Anil Can on 19.04.2022.
//

import Foundation

class HomePageInteractor: PresenterToInteractorHomePageProtocol {
    var anasayfaPresenter: InteractorToPresenterHomePageProtocol?
    
    func tumKisileriAl() {
        var liste = [Kisiler]()
        let k1 = Kisiler(kisi_id: 1, kisi_ad: "Anil", kisi_tel: "5394753873")
        let k2 = Kisiler(kisi_id: 2, kisi_ad: "Can", kisi_tel: "123123123")
        liste.append(k1)
        liste.append(k2)
        anasayfaPresenter?.sendToPresenter(kisilerList: liste)
    }
    
    func kisiAra(ara: String) {
        print("arama sonucu: \(ara)")
    }
    
    func kisiSil(kisi_id: Int) {
        print("\(kisi_id) silindi")
    }
    
    
}
