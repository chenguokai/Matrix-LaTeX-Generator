//
//  MainViewController.swift
//  Matrix-LaTeX-Generator
//
//  Created by Xim on 2018/7/8.
//  Copyright © 2018年 chenguokai. All rights reserved.
//

import Cocoa

class MainViewController: NSViewController {

    @IBOutlet weak var T11: NSTextField!
    @IBOutlet weak var T12: NSTextField!
    @IBOutlet weak var T13: NSTextField!
    @IBOutlet weak var T14: NSTextField!
    @IBOutlet weak var T15: NSTextField!
    @IBOutlet weak var T16: NSTextField!
    @IBOutlet weak var T21: NSTextField!
    @IBOutlet weak var T22: NSTextField!
    @IBOutlet weak var T23: NSTextField!
    @IBOutlet weak var T24: NSTextField!
    @IBOutlet weak var T25: NSTextField!
    @IBOutlet weak var T26: NSTextField!
    @IBOutlet weak var T31: NSTextField!
    @IBOutlet weak var T32: NSTextField!
    @IBOutlet weak var T33: NSTextField!
    @IBOutlet weak var T34: NSTextField!
    @IBOutlet weak var T35: NSTextField!
    @IBOutlet weak var T36: NSTextField!
    @IBOutlet weak var T41: NSTextField!
    @IBOutlet weak var T42: NSTextField!
    @IBOutlet weak var T43: NSTextField!
    @IBOutlet weak var T44: NSTextField!
    @IBOutlet weak var T45: NSTextField!
    @IBOutlet weak var T46: NSTextField!
    @IBOutlet weak var T51: NSTextField!
    @IBOutlet weak var T52: NSTextField!
    @IBOutlet weak var T53: NSTextField!
    @IBOutlet weak var T54: NSTextField!
    @IBOutlet weak var T55: NSTextField!
    @IBOutlet weak var T56: NSTextField!
    @IBOutlet weak var T61: NSTextField!
    @IBOutlet weak var T62: NSTextField!
    @IBOutlet weak var T63: NSTextField!
    @IBOutlet weak var T64: NSTextField!
    @IBOutlet weak var T65: NSTextField!
    @IBOutlet weak var T66: NSTextField!
    var realDone = true
    func grabData(a: Int, b: Int) {
        //such a dirty work
        
        if a < 7 && b < 7 {
            dataArray[1,1] = T11.stringValue
            dataArray[1,2] = T12.stringValue
            dataArray[1,3] = T13.stringValue
            dataArray[1,4] = T14.stringValue
            dataArray[1,5] = T15.stringValue
            dataArray[1,6] = T16.stringValue
            dataArray[2,1] = T21.stringValue
            dataArray[2,2] = T22.stringValue
            dataArray[2,3] = T23.stringValue
            dataArray[2,4] = T24.stringValue
            dataArray[2,5] = T25.stringValue
            dataArray[2,6] = T26.stringValue
            dataArray[3,1] = T31.stringValue
            dataArray[3,2] = T32.stringValue
            dataArray[3,3] = T33.stringValue
            dataArray[3,4] = T34.stringValue
            dataArray[3,5] = T35.stringValue
            dataArray[3,6] = T36.stringValue
            dataArray[4,1] = T41.stringValue
            dataArray[4,2] = T42.stringValue
            dataArray[4,3] = T43.stringValue
            dataArray[4,4] = T44.stringValue
            dataArray[4,5] = T45.stringValue
            dataArray[4,6] = T46.stringValue
            dataArray[5,1] = T51.stringValue
            dataArray[5,2] = T52.stringValue
            dataArray[5,3] = T53.stringValue
            dataArray[5,4] = T54.stringValue
            dataArray[5,5] = T55.stringValue
            dataArray[5,6] = T56.stringValue
            dataArray[6,1] = T61.stringValue
            dataArray[6,2] = T62.stringValue
            dataArray[6,3] = T63.stringValue
            dataArray[6,4] = T64.stringValue
            dataArray[6,5] = T65.stringValue
            dataArray[6,6] = T66.stringValue
            return
        }
        NSAlert.showAlert(title: "行或列输入非法，请重试", message: nil)
        realDone = false
        print("DEBUG:illegal input row or column")
    }
    @IBAction func AllDone(_ sender: Any) {
        realDone = true
        grabData(a: x, b: y)
        if realDone {
            copyToClipBoard(textToCopy: Gen_LaTeX())
            NSAlert.showAlert(title: "已经拷贝到剪贴板",message: nil)
        }
    }
    var OutputLaTeXPath:String = "" //For Download path
    @IBAction func toDownLoad(_ sender: Any) {
        realDone = true
        grabData(a: x, b: y)
        if realDone {
            LaTeXToFile(path: "/Users/cgk/Downloads/Test.tex")
            NSAlert.showAlert(title: "已经导出到下载文件夹", message: nil)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
    }
    
}
