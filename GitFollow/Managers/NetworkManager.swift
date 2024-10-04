//
//  NetworkManager.swift
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

import Foundation

class NetworkManager {

    static let shared = NetworkManager()
    let baseURL = "https://api.github.com/users/"

    private init() { }

    func getFollowers(for username: String, page: Int, completed: @escaping ([Follower]?, String?) -> Void) {
        let endpoint = baseURL + "\(username)/followers?per_page=100&page=\(page)"

        guard let url = URL(string: endpoint) else {
            completed(nil, "Invalid username")
            return
        }

        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            if let _ = error {
                completed(nil, "Unable to complete your request. Please check your internet connection.")
            }

            guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
                completed(nil, "Invalid response from the server. Please try again.")
                return
            }

            guard let data = data else {
                completed(nil, "Invalid data received from the server. Please try again.")
                return
            }

            do {
                let decoder = JSONDecoder()
                decoder.keyDecodingStrategy = .convertFromSnakeCase
                let followers = try decoder.decode([Follower].self, from: data)
                completed(followers, nil)
            } catch {
                completed(nil, "Invalid data received from the server. Please try again.")
            }
        }

        task.resume()
    }
}
