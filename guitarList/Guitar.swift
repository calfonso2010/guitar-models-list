//
//  Guitar.swift
//  guitarList
//
//  Created by Carlos Alfonso on 1/19/17.
//  Copyright © 2017 Carlos Alfonso. All rights reserved.
//
import UIKit
import Foundation
class Guitar {
    var name: String
    var photo: UIImage?
    var subtitle: String
    var date: String
    var author: String
    
    init(name: String, photo: UIImage?, subtitle: String, date: String, author: String) {
    self.name = name
    self.photo = photo
    self.subtitle = subtitle
    self.date = date
    self.author = author
    }

}