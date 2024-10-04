//
//  FollowerListVC.swift
//  GitFollow
//
//  Created by Szymon Michalak on 04/10/2024.
//
//  Description:
//  This file is part of the GitFollow project. It is designed to 
//  [briefly describe what this file/class/module does].
//
//  Personal Notes:
//  [Add any personal notes, thoughts, or reminders here. For example, why
//  you chose a particular design pattern, or any insights for future you.]
//
//  Find me here:
//  iOSwift.dev: https://ioswift.dev/
//


import UIKit

class FollowerListVC: UIViewController {

    var username: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        navigationController?.navigationBar.prefersLargeTitles = true

        NetworkManager.shared.getFollowers(for: username, page: 1) { result in
            switch result {
            case .success(let followers):
                print("Followers count \(followers.count)")
                print(followers)
            case .failure(let error):
                self.presentGFAlertOnMainThread(title: "Bad stuff happened", message: error.errorMessage, buttonTitle: "Ok")
            }
        }

    }

    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: false)
    }

}
