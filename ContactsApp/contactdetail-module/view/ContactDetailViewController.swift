//
//  ContactDetailViewController.swift
//  ContactsApp
//
//  Created by Anil Can on 12.04.2022.
//

import UIKit

class ContactDetailViewController: UIViewController {

    @IBOutlet weak var tfContactNumber: UITextField!
    @IBOutlet weak var tfContactName: UITextField!
    
    var contact:Kisiler?
    
    var contactDetailPresenter: ContactDetailViewToPresenterProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let c = contact {
            tfContactName.text = c.kisi_ad
            tfContactNumber.text = c.kisi_tel
        }
        ContactDetailRouter.createModule(ref: self)
    }

    @IBAction func btnUpdateContact(_ sender: Any) {
        if let name = tfContactName.text, let number = tfContactNumber.text, let c = contact {
            contactDetailPresenter?.kisiGuncelle(kisi_id: c.kisi_id!, kisi_ad: name, kisi_tel: number)
        }
    }
    
    
}
