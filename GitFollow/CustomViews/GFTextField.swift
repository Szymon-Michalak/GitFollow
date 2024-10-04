//
//  GFTextField.swift
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

class GFTextField: UITextField {

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }


    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }


    init(placeholder: String) {
        super.init(frame: .zero)
        self.placeholder = placeholder
        configure()
    }


    private func configure() {
        translatesAutoresizingMaskIntoConstraints = false

        layer.cornerRadius = 10
        layer.borderWidth = 2
        layer.borderColor = UIColor.systemGray4.cgColor

        textColor = .label
        tintColor = .label
        textAlignment = .center
        font = UIFont.preferredFont(forTextStyle: .title2)
        adjustsFontSizeToFitWidth = true
        minimumFontSize = 12

        backgroundColor = .tertiarySystemBackground
        keyboardType = .default
        returnKeyType = .go
        autocorrectionType = .no

        placeholder = "Enter a username"
    }
}
