//
//  ViewController.swift
//  Ambitions
//
//  Created by 吉腾蛟 on 2019/9/6.
//  Copyright © 2019 JY. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var todoTextField: UITextField!
    
    @IBOutlet weak var listTableview: UITableView!
    
    let cell_reuse = "todo_cell_reuse"
    
    var listArray: Array<ToDoModel>?
    
    var completeArray: Array<ToDoModel>?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        listTableview.register(UINib.init(nibName: "ToDoTableViewCell", bundle: nil), forCellReuseIdentifier: cell_reuse)
        listTableview.rowHeight = 70
        
        loadData()
        
        listTableview.reloadData()
    }
    
    func loadData() {
        listArray = Array<ToDoModel>()
        completeArray = Array<ToDoModel>()
    }
}

//表格试图代理和数据源
extension ViewController: UITableViewDelegate,UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        listArray?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cell_reuse, for: indexPath) as! ToDoTableViewCell
        
        cell.configureData(model: listArray?[indexPath.row])
        
        return cell
    }
}

//输入框的代理
extension ViewController: UITextFieldDelegate{
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        return true
    }
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        return true
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField, reason: UITextField.DidEndEditingReason) {
        let model = ToDoModel()
        model.content = textField.text
        
        listArray?.append(model)
        
        listTableview.reloadData()
    }
}

