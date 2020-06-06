//
//  TodoViewController.swift
//  ToDo
//
//  Created by Admin on 6/4/20.
//  Copyright © 2020 Admin. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa
class TodoViewController: BaseViewController {
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var tfTaskDesc: UITextField!
    @IBOutlet weak var addBtn: UIButton!
    let disposeBag = DisposeBag()
    let viewModel = ToDoVM()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bindData()
        setUpViews()
    }
    func setUpViews(){
        let nibName = UINib(nibName: nibNames.todoTableViewCell, bundle: nil)
        tableView.register(nibName, forCellReuseIdentifier: nibNames.todoTableViewCell)
        tableView.rowHeight = UITableView.automaticDimension
        tableView.estimatedRowHeight = 150
        tableView.clipsToBounds = true
        tableView.separatorStyle = .none
    }
    func bindData(){
        viewModel.taskArray.bind(to: tableView.rx.items(cellIdentifier: nibNames.todoTableViewCell)) { (row, model, cell) in
            if let _cell = cell as? TodoTableViewCell {
                _cell.lblTitle.text = model.desc
            }
        }.disposed(by: disposeBag)
    }
    @IBAction func addButton(_ sender: Any) {
        _ = self.tfTaskDesc.text?.isEmpty ?? true ? print("don't add") : self.viewModel.taskArray.accept(viewModel.taskArray.value + [ToDoModel(json: ["desc":self.tfTaskDesc.text ?? ""])])
        
    }
}
