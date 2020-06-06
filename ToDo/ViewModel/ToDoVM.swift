//
//  ToDoVM.swift
//  ToDo
//
//  Created by Admin on 6/4/20.
//  Copyright © 2020 Admin. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa
class ToDoVM: NSObject {
    let taskArray: BehaviorRelay<[ToDoModel]> = BehaviorRelay(value: [])
    var tfTask = BehaviorRelay<String>(value: "")
}
