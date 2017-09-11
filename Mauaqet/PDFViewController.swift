//
//  PDFViewController.swift
//  Mauaqet
//
//  Created by Turath-Alanbiaa on 12/12/16.
//  Copyright © 2016 Turath-Alanbiaa. All rights reserved.
//

import UIKit

class PDFViewController: UIViewController
{
    
    var pdf : Int?;
    

    @IBOutlet var navigationBar: UINavigationBar!
    @IBOutlet var webView: UIWebView!

    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        webView.scalesPageToFit = true;
        
        let pdfFile = loadFileAndTitle();
        
        if let pdfURL = Bundle.main.url(forResource: "/pdf/" + pdfFile , withExtension: "pdf", subdirectory: nil, localization: nil)
        {
            do
            {
                let data = try Data(contentsOf: pdfURL)
                webView.load(data, mimeType: "application/pdf", textEncodingName:"", baseURL: pdfURL.deletingLastPathComponent())
                
            }
            catch {
                print("error");
            }
        }
    }
    
    
    
    func loadFileAndTitle() -> String
    {
        switch pdf!
        {
        case 0:
            navigationBar.topItem?.title = "المقدمة";
            return "intro";
            
        case 1:
            navigationBar.topItem?.title = "شهر محرم";
            return "month_1";
            
        case 2:
            navigationBar.topItem?.title = "شهر صفر";
            return "month_2";
            
        case 3:
            navigationBar.topItem?.title = "شهر ربيع الاول";
            return "month_3";
            
        case 4:
            navigationBar.topItem?.title = "شهر ربيع الاخر";
            return "month_4";
            
        case 5:
            navigationBar.topItem?.title = "شهر جمادى الاولى";
            return "month_5";
            
        case 6:
            navigationBar.topItem?.title = "شهر جمادى الاخرى";
            return "month_6";
            
        case 7:
            navigationBar.topItem?.title = "شهر رجب";
            return "month_7";
            
        case 8:
            navigationBar.topItem?.title = "شهر شعبان";
            return "month_8";
            
        case 9:
            navigationBar.topItem?.title = "شهر رمضان";
            return "month_9";
            
        case 10:
            navigationBar.topItem?.title = "شهر شوال";
            return "month_10";
            
        case 11:
            navigationBar.topItem?.title = "شهر ذي القعدة";
            return "month_11";
            
        case 12:
            navigationBar.topItem?.title = "شهر ذي الحجة";
            return "month_12";
            
        case 13:
            navigationBar.topItem?.title = "طريقة الاستخدام";
            return "how_to";
            
        case 14:
            navigationBar.topItem?.title = "طريقة حساب القبلة";
            return "calculate_qibla";
            
        case 15:
            navigationBar.topItem?.title = "المقدمة";
            return "notes";
            
        case 16:
            navigationBar.topItem?.title = "كتاب مواقيت الاهلة";
            return "mauaqet";
            
        default:
            navigationBar.topItem?.title = "لم يتم اختيار اي ملف";
            return "";
        }
    }
    
    
    

}
