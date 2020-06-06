//
//  ToDoModel.swift
//  ToDo
//
//  Created by Admin on 6/4/20.
//  Copyright © 2020 Admin. All rights reserved.
//

import UIKit

class ToDoModel: NSObject {
    var desc: String?
    
    init(json: [String:Any]){
        self.desc = json["desc"] as? String ?? ""
    }
}
