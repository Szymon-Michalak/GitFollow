//
//  UIViewContrller+Ext.swift
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

extension UIViewController {

    func presentGFAlertOnMainThread(title: String, message: String, buttonTitle: String) {
        DispatchQueue.main.async {
            let alertVC = GFAlertViewController(title: title, message: message, buttonTitle: buttonTitle)
            alertVC.modalPresentationStyle = .overFullScreen
            alertVC.modalTransitionStyle = .crossDissolve
            self.present(alertVC, animated: true)
        }
    }
}
