//
//  SaveContactViewController.swift
//  ContactsApp
//
//  Created by Anil Can on 12.04.2022.
//

import UIKit

class SaveContactViewController: UIViewController {

    @IBOutlet weak var contactNameTf: UITextField!
    @IBOutlet weak var contactNumberTf: UITextField!
    
    var saveContactPresenter : ViewToPresenterSaveContactProtocol?
    override func viewDidLoad() {
        super.viewDidLoad()
        SaveContactRouter.createModule(ref: self)
    }
    
    @IBAction func btnSaveContact(_ sender: Any) {
        if let contactName = contactNameTf.text, let contactNumber = contactNumberTf.text {
            saveContactPresenter?.ekle(kisi_ad: contactName, kisi_tel: contactNumber)
        }
    }
    

}
