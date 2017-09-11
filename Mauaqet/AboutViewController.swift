//
//  AboutViewController.swift
//  Mauaqet
//
//  Created by Turath-Alanbiaa on 12/12/16.
//  Copyright © 2016 Turath-Alanbiaa. All rights reserved.
//

import UIKit

class AboutViewController: UITableViewController
{
    
    override func viewDidLoad()
    {
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.estimatedRowHeight = 80 // Something reasonable to help ios render your cells
    }
    
    
    @IBAction func facebookButton(_ sender: AnyObject)
    {
        openFacebookPage();
    }
    
    @IBAction func telegramButton(_ sender: AnyObject)
    {
        openTelegram();
    }
    
    @IBAction func twitter(_ sender: AnyObject)
    {
        openTwitterProfile();
    }
    
    @IBAction func youtube(_ sender: AnyObject)
    {
        openYoutube();
    }
    
    @IBAction func back(_ sender: AnyObject)
    {
        dismiss(animated: true, completion: nil);
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
    {
        if indexPath.row == 1
        {
            return UITableViewAutomaticDimension
        }
        else
        {
            return super.tableView(self.tableView, heightForRowAt: indexPath);
        }
    }
    
    
    func openFacebookPage()
    {
        let facebookURL = URL(string: "fb://profile/turathalanbiaa")!
        if UIApplication.shared.canOpenURL(facebookURL)
        {
            UIApplication.shared.openURL(facebookURL)
        }
        else
        {
            UIApplication.shared.openURL(URL(string: "https://www.facebook.com/turathalanbiaa")!)
        }
    }
    
    func openTwitterProfile()
    {
        let twitterURL = URL(string: "twitter:///user?screen_name=TurathAlanbiaa")!
        if UIApplication.shared.canOpenURL(twitterURL)
        {
            UIApplication.shared.openURL(twitterURL)
        }
        else
        {
            UIApplication.shared.openURL(URL(string: "https://twitter.com/TurathAlanbiaa")!)
        }
    }
    
    func openYoutube()
    {
        let twitterURL = URL(string: "youtube://www.youtube.com/user/UCV0xdl7t1xR44mv1G6cQxEg")!
        if UIApplication.shared.canOpenURL(twitterURL)
        {
            UIApplication.shared.openURL(twitterURL)
        }
        else
        {
            UIApplication.shared.openURL(URL(string: "https://www.youtube.com/user/UCV0xdl7t1xR44mv1G6cQxEg")!)
        }
    }
    
    func openTelegram()
    {
        let twitterURL = URL(string: "tg://resolve?domain=turathmanage")!
        if UIApplication.shared.canOpenURL(twitterURL)
        {
            UIApplication.shared.openURL(twitterURL)
        }
        else
        {
            UIApplication.shared.openURL(URL(string: "https://telegram.me/turathmanage")!)
        }
    }


}
