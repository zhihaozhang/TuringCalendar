//
//  ViewController.swift
//  TuringCalendar
//
//  Created by Chih-Hao on 2018/2/8.
//  Copyright © 2018年 Chih-Hao. All rights reserved.
//

import Cocoa
import Quartz

class ViewController: NSViewController {

    
    @IBOutlet var calendarViewer: PDFView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = Bundle.main.url(forResource: "calendar", withExtension: "pdf")
        let pdf = PDFDocument(url: url!)
        
//        print(pdf?.pageCount) // number of pages in document
//        print(pdf?.string) // entire text of document
        
      //  calendarViewer = PDFView(frame: CGRect(x: 0, y: 0, width: 500, height: 750))
        
        let today = GetWeekByDate(date: Date())
        
        
        calendarViewer.document = pdf
        calendarViewer.go(to: (pdf?.page(at: today-1))!)
        
        


        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }
    
    func GetWeekByDate(date:Date) ->Int{
        guard let calendar = NSCalendar(identifier: NSCalendar.Identifier.gregorian) else {
            return 0
        }
        let components = calendar.components([.weekOfYear,.weekOfMonth,.weekday,.weekdayOrdinal], from: date)
       
        return components.weekOfYear!;
    }
  
    


}

