//
//  HomePageProtocols.swift
//  ContactsApp
//
//  Created by Anil Can on 19.04.2022.
//

import Foundation

protocol ViewToPresenterHomePageProtocol {
    var anasayfaInteractor: PresenterToInteractorHomePageProtocol? {get set}
    var anasayfaView:PresenterToViewHomePageProtocol? {get set}
    
    func kisileriYukle()
    func ara(ara:String)
    func sil(kisi_id:Int)
}

protocol PresenterToInteractorHomePageProtocol {
    var anasayfaPresenter:InteractorToPresenterHomePageProtocol? {get set}
    
    func tumKisileriAl()
    func kisiAra(ara:String)
    func kisiSil(kisi_id:Int)
}

protocol InteractorToPresenterHomePageProtocol {
    func sendToPresenter(kisilerList: Array<Kisiler>)
}

protocol PresenterToViewHomePageProtocol {
    func sendToView(kisilerList: Array<Kisiler>)
}

protocol PresenterToRouterHomePageProtocol {
    static func createModule(ref:HomePageViewController)
}
