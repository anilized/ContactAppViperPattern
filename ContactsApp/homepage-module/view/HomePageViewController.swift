//
//  HomePageViewController.swift
//  ContactsApp
//
//  Created by Anil Can on 12.04.2022.
//

import UIKit

class HomePageViewController: UIViewController {

    @IBOutlet weak var searchBarOutlet: UISearchBar!
    
    @IBOutlet weak var kisilerTableView: UITableView!
    
    var kisilerList = [Kisiler]()
    
    var homePagePresenter: ViewToPresenterHomePageProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        searchBarOutlet.delegate = self
        kisilerTableView.delegate = self
        kisilerTableView.dataSource = self
        
        HomePageRouter.createModule(ref: self)
        
        homePagePresenter?.kisileriYukle()
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailPage" {
            let contact = sender as? Kisiler
            let vc = segue.destination as! ContactDetailViewController
            vc.contact = contact
        }
    }
}

extension HomePageViewController: PresenterToViewHomePageProtocol {
    func sendToView(kisilerList: Array<Kisiler>) {
        self.kisilerList = kisilerList
        self.kisilerTableView.reloadData()
    }
    
}

extension HomePageViewController: UISearchBarDelegate {
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        homePagePresenter?.ara(ara: searchText)
    }
}

extension HomePageViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return kisilerList.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let kisi = kisilerList[indexPath.row]
        let hucre = tableView.dequeueReusableCell(withIdentifier: "kisilerHucre", for: indexPath) as! TableViewHucre
        hucre.kisiBilgiLabel.text = "\(kisi.kisi_ad!) - \(kisi.kisi_tel!)"
        return hucre
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let kisi = kisilerList[indexPath.row]
        performSegue(withIdentifier: "toDetailPage", sender: kisi)
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let deleteAction = UIContextualAction(style: .destructive, title: "Sil") {(action, view, bool) in
            let kisi = self.kisilerList[indexPath.row]
            let alertAction = UIAlertController(title: "Sil", message: "Silmek Istediginden Emin Misin?", preferredStyle: .alert)
            
            let iptalAction = UIAlertAction(title: "Iptal", style: .cancel) {action in}
            let evetAction = UIAlertAction(title: "Evet", style: .destructive) {action in
                self.homePagePresenter?.sil(kisi_id: kisi.kisi_id!)
            }
            
            alertAction.addAction(iptalAction)
            alertAction.addAction(evetAction)
            
            self.present(alertAction, animated: true)
            
        }
        
        return UISwipeActionsConfiguration(actions: [deleteAction])
    }
    
    
}


