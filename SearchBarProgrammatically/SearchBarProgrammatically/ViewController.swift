//
//  ViewController.swift
//  SearchBarProgrammatically
//
//  Created by Vibhor Gupta on 8/13/19.
//  Copyright © 2019 Vibhor Gupta. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let searchBar = UISearchBar()

    override func viewDidLoad() {
        super.viewDidLoad()

        searchBar.sizeToFit()

        configureUI()

    }

    @objc func handleSearch(){

        search(shouldShow: true)

        searchBar.becomeFirstResponder()
    }


    func configureUI(){
        view.backgroundColor = .white

        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.title = "Search Bar"

        navigationController?.navigationBar.isTranslucent = false

        navigationController?.navigationBar.barStyle = .blackTranslucent


        showSearchBarButton(shouldShow: true)
    }


    func showSearchBarButton(shouldShow : Bool){

        if shouldShow {
            navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .search, target: self, action: #selector(handleSearch))

        }else{
            navigationItem.rightBarButtonItem = nil
        }
    }
    func search(shouldShow : Bool){

        showSearchBarButton(shouldShow: shouldShow)
        searchBar.showsCancelButton = shouldShow
        navigationItem.titleView = shouldShow ? searchBar : nil
    }

}


extension ViewController : UISearchBarDelegate {

    func searchBarTextDidBeginEditing(_ searchBar: UISearchBar) {

    }

    func searchBarTextDidEndEditing(_ searchBar: UISearchBar) {

    }


    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        
    }

    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {

      search(shouldShow: false)
    }
}
