//
//  ViewController.swift
//  Matrix-LaTeX-Generator
//
//  Created by Xim on 2018/7/3.
//  Copyright © 2018年 chenguokai. All rights reserved.
//

import Cocoa


class ViewController: NSViewController {

    
    
    @IBOutlet weak var Rows: NSTextField!
    @IBOutlet weak var Columns: NSTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }
    
    @IBAction func ColumnAndRow(_ sender: Any) {
        GetXY(a:Int(Rows.intValue),b:Int(Columns.intValue))
    }
    @IBOutlet weak var FinishedColumnAndRow: NSButton!
    @IBAction func ColumnAndRowDone(_ sender: Any) {
        if !FinishedColumnAndRow.isEnabled {
            NSAlert.showAlert(title: "行列未输入或未选中按钮", message: "请补充或选中")
        }
    }
    
    

    

}

