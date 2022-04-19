//
//  HomePageRouter.swift
//  ContactsApp
//
//  Created by Anil Can on 19.04.2022.
//

import Foundation

class HomePageRouter: PresenterToRouterHomePageProtocol {
    static func createModule(ref: HomePageViewController) {
        let presenter = HomePagePresenter()
        //  View
        ref.homePagePresenter = presenter
        //  Presenter
        ref.homePagePresenter?.anasayfaInteractor = HomePageInteractor()
        ref.homePagePresenter?.anasayfaView = ref
        //  Interactor
        ref.homePagePresenter?.anasayfaInteractor?.anasayfaPresenter = presenter
    }
    
    
}
