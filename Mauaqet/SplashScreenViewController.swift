//
//  SplashScreenViewController.swift
//  Mauaqet
//
//  Created by Turath-Alanbiaa on 12/13/16.
//  Copyright © 2016 Turath-Alanbiaa. All rights reserved.
//
import UIKit

class SplashScreenViewController: UIViewController
{
    override func viewDidLoad()
    {
        perform(#selector(SplashScreenViewController.showMainViewController), with: nil, afterDelay: 2.5);
    }
    
    @IBOutlet var atabaLogo: UIImageView!
    @IBOutlet var turathLogo: UIImageView!

    
    func showMainViewController()
    {
        performSegue(withIdentifier: "MainViewControllerSegue", sender: self);
    }
    
}
