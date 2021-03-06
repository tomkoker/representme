//
//  BillViewController.swift
//  RepresentMe_beta
//
//  Created by Teddy Koker on 6/3/15.
//  Copyright (c) 2015 Teddy Koker. All rights reserved.
//

import Foundation
import UIKit

class BillViewController: UIViewController{

    @IBOutlet weak var textView: UITextView!
    var dataList: DataList!
    var bill: Bill!
    @IBOutlet weak var ChamberLabel: UINavigationItem!
    @IBOutlet weak var dateLabel: UILabel!
    
    override func viewDidLoad() {
        
        // Do any additional setup after loading the view, typically from a nib.
        
        super.viewDidLoad()
        configureView()
        // *****SIDEBAR*****
        if self.revealViewController() != nil {
            self.revealViewController().rearViewRevealWidth = 170
            self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        }
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func configureView(){
        dataList = DataList.list
        bill = dataList.bills[dataList.selectedBill]
        
        textView.text = bill.official_title
        ChamberLabel.title = bill.chamber
        dateLabel.text = bill.introduced_on
        
    
    
    }


}