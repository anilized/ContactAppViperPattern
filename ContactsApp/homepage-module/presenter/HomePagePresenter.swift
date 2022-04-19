//
//  HomePagePresenter.swift
//  ContactsApp
//
//  Created by Anil Can on 19.04.2022.
//

import Foundation

class HomePagePresenter: ViewToPresenterHomePageProtocol {
    var anasayfaInteractor: PresenterToInteractorHomePageProtocol?
    
    var anasayfaView: PresenterToViewHomePageProtocol?
    
    func kisileriYukle() {
        anasayfaInteractor?.tumKisileriAl()
    }
    
    func ara(ara: String) {
        anasayfaInteractor?.kisiAra(ara: ara)
    }
    
    func sil(kisi_id: Int) {
        anasayfaInteractor?.kisiSil(kisi_id: kisi_id)
    }
    
    
}

extension HomePagePresenter: InteractorToPresenterHomePageProtocol {
    func sendToPresenter(kisilerList: Array<Kisiler>) {
        anasayfaView?.sendToView(kisilerList: kisilerList)
    }
    
    
}
