//
//  Comment.swift
//  mvpExample1
//
//  Created by Максим Япринцев on 22.08.2023.
//

import Foundation

struct Comment: Decodable{
    var postId: Int
    var id: Int
    var name: String
    var email: String
    var body: String
}
