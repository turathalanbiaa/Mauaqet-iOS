//
//  MonthViewController.swift
//  Mauaqet
//
//  Created by Turath-Alanbiaa on 12/12/16.
//  Copyright © 2016 Turath-Alanbiaa. All rights reserved.
//
import UIKit

class MonthViewController: UIViewController  , UITableViewDelegate , UITableViewDataSource
{
    
    let options = ["شهر محرم" ,
                   "شهر صفر" ,
                   "شهر ربيع الاول" ,
                   "شهر ربيع الاخر" ,
                   "شهر جمادى الاولى" ,
                   "شهر جمادى الاخرى" ,
                   "شهر رجب" ,
                   "شهر شعبان" ,
                   "شهر رمضان" ,
                   "شهر شوال" ,
                   "شهر ذي القعدة" ,
                   "شهر ذي الحجة" ,
                   ];
    
    @IBOutlet var tableView: UITableView!
    
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
        let cell = tableView.dequeueReusableCell(withIdentifier: "monthCell", for: indexPath) as! MonthCell;
        
        cell.viewController = self;
        cell.button.layer.cornerRadius = 3;
        cell.button.setTitle(options[indexPath.row] , for: UIControlState());
        cell.value = indexPath.row + 1;
        
        return cell;
    }
    
    
    @IBAction func back(_ sender: Any)
    {
        self.dismiss(animated: true, completion: nil);
    }
    
}

