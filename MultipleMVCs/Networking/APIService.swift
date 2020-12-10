//
//  APIService.swift
//  MultipleMVCs
//
//  Created by Tung Vu Duc on 09/12/2020.
//

import Foundation

class APIService {
    private init() {}
    
    static let shared = APIService()
    
    func loadFeed(completion: @escaping ([FeedItem]) -> Void) {
        completion(feed)
    }
}

let feed = [
    FeedItem(image: "p1", username: "tungvu", date: "24/12/2019", description: "Fairy tales are more than true: not because they tell us that dragons exist, but because they tell us that dragons can be beaten."),
    FeedItem(image: "p2", username: "bigcityboy", date: "20/3/2020", description: "When one door of happiness closes, another opens; but often we look so long at the closed door that we do not see the one which has been opened for us."),
    FeedItem(image: "p3", username: "acoolguy", date: "28/5/2020", description: "Only the paranoid survive."),
    FeedItem(image: "p4", username: "whoistung", date: "20/3/2020", description: "The best time to plant a tree was 20 years ago. The second best time is now."),
    FeedItem(image: "p5", username: "vuductung", date: "20/3/2020", description: nil),
    FeedItem(image: "p6", username: "tungvu", date: "20/3/2020", description: "I wake up every morning and think to myself, ‘how far can I push this company in the next 24 hours.’")
]
