//
//  NetworkError.swift
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


enum NetworkError: Error {
    case invalidURL
    case unableToComplete
    case invalidResponse
    case invalidData

    var errorMessage: String {
        switch self {
        case .invalidURL:
            return "Unable to reach server."
        case .unableToComplete:
            return "Unable to complete request. Please check your internet connection."
        case .invalidResponse:
            return "Invalid response from server. Please try again."
        case .invalidData:
            return "The data received from the server was invalid. Please try again."
        }
    }
}
