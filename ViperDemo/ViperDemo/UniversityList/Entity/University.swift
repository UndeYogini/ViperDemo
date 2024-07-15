//
//  University.swift
//  ViperDemo
///
//  Created by Yogini Unde on 15/07/24.
//

import UIKit

struct University {
    var name: String!
    var state: String!
    var web: String!
    var country: String!
    var countrycode: String!
    
    init(attributes: [String: String]) {
        self.name = attributes["name"]
        self.state = attributes["state"]
        self.web = attributes["web"]
        self.country =  attributes["country"]
        self.countrycode = attributes["countrycode"]
    }
}
