//
//  GFBodyLabel.swift
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

class GFBodyLabel: UILabel {

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }


    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }


    init(textAlignment: NSTextAlignment) {
        super.init(frame: .zero)
        self.textAlignment = textAlignment
        configure()
    }


    private func configure() {
        textColor = .secondaryLabel
        font = UIFont.preferredFont(forTextStyle: .body)
        adjustsFontSizeToFitWidth = true
        minimumScaleFactor = 0.75
        lineBreakMode = .byWordWrapping
        translatesAutoresizingMaskIntoConstraints = false
    }

}
