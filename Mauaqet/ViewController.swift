//
//  ViewController.swift
//  Mauaqet
//
//  Created by Turath-Alanbiaa on 12/10/16.
//  Copyright © 2016 Turath-Alanbiaa. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITableViewDelegate , UITableViewDataSource
{

    @IBOutlet var tableView: UITableView!
    let options =
        [ "المقدمة"
        , "طريقة العمل"
        , "الاشهر"
        , "طريقة حساب القبلة"
        , "الملاحضات"
        , "معهد تراث الانبياء"
        , "عرض الكتاب كامل"];
    
    
    let values = ["intro" , "how_to" , "months" , "qibla" , "notes" , "about" , "pdf"];
    

    override func viewDidLoad()
    {
        super.viewDidLoad()
        self.tableView.delegate = self;
        self.tableView.dataSource = self;
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return options.count;
    }
    
    func numberOfSections(in tableView: UITableView) -> Int
    {
        return 1
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
    {
        return 80;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "mainCell", for: indexPath) as! MainTableViewCell;
        
        cell.viewController = self;
        cell.button.layer.cornerRadius = 3;
        cell.button.setTitle(options[indexPath.row] , for: UIControlState());
        cell.value = values[indexPath.row];
        
        return cell;
    }

}


