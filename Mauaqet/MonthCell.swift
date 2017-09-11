//
//  MonthCell.swift
//  Mauaqet
//
//  Created by Turath-Alanbiaa on 12/12/16.
//  Copyright © 2016 Turath-Alanbiaa. All rights reserved.
//

import UIKit

class MonthCell: UITableViewCell
{
    var viewController : UIViewController?;
    var value : Int?;
    
    @IBOutlet var button: UIButton!
    
    @IBAction func onClick(_ sender: AnyObject)
    {
        launchPDF(value!);
    }
    
    func launchPDF(_ pdf : Int)
    {
        let storybord = UIStoryboard(name: "Main", bundle: nil)
        let pdfViewController = storybord.instantiateViewController(withIdentifier: "PDFViewController") as! PDFViewController;
        
        pdfViewController.pdf = pdf;
        
        viewController?.present(pdfViewController, animated: true, completion: nil);
    }

}
