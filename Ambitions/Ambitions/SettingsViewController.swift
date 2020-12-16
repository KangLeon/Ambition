//
//  SettingsViewController.swift
//  Ambitions
//
//  Created by 吉腾蛟 on 2020/12/17.
//  Copyright © 2020 JY. All rights reserved.
//

import Foundation
import UIKit

class SettingsViewController: ViewController {
    
    //设置shi
    @IBOutlet weak var settingsTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

extension SettingsViewController: UITableViewDelegate,UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    }
}
