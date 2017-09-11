//
//  MainTableViewCell.swift
//  Mauaqet
//
//  Created by Turath-Alanbiaa on 12/10/16.
//  Copyright © 2016 Turath-Alanbiaa. All rights reserved.
//

import UIKit

class MainTableViewCell: UITableViewCell
{
    var viewController : UIViewController?;
    var value : String = "";
    
    @IBOutlet var button: UIButton!
    
    @IBAction func onClick(_ sender: AnyObject)
    {
        switch value
        {
            
        case "months":
            let storybord = UIStoryboard(name: "Main", bundle: nil)
            let pdfViewController = storybord.instantiateViewController(withIdentifier: "MonthViewController") as! MonthViewController;
            
            viewController?.present(pdfViewController, animated: true, completion: nil);
            break;
            
        case "about":
            let storybord = UIStoryboard(name: "Main", bundle: nil)
            let pdfViewController = storybord.instantiateViewController(withIdentifier: "AboutViewController") as! UINavigationController;
            
            viewController?.present(pdfViewController, animated: true, completion: nil);
            break;
            
        case "pdf":
            launchPDF(16);
            break;
    
        case "intro":
            launchPDF(0);
            break;
            
        case "how_to":
            launchPDF(13);
        
        case "qibla":
            launchPDF(14);
            
        case "notes":
            launchPDF(15);
            
        default:
            break;
            
        }
    }
    
    func launchPDF(_ pdf : Int)
    {
        let storybord = UIStoryboard(name: "Main", bundle: nil)
        let pdfViewController = storybord.instantiateViewController(withIdentifier: "PDFViewController") as! PDFViewController;
        pdfViewController.pdf = pdf
        viewController?.present(pdfViewController, animated: true, completion: nil);

    }
    
}
