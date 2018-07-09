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
    @IBOutlet weak var T21: NSTextField!
    @IBOutlet weak var T22: NSTextField!
    @IBOutlet weak var T23: NSTextField!
    @IBOutlet weak var T24: NSTextField!
    @IBOutlet weak var T31: NSTextField!
    @IBOutlet weak var T32: NSTextField!
    @IBOutlet weak var T33: NSTextField!
    @IBOutlet weak var T34: NSTextField!
    @IBOutlet weak var T41: NSTextField!
    @IBOutlet weak var T42: NSTextField!
    @IBOutlet weak var T43: NSTextField!
    @IBOutlet weak var T44: NSTextField!
    var realDone = true
    func grabData(a: Int, b: Int) {
        //such a dirty work
        // x = 1 y = 1
        if a == 1 && b == 1 {
            dataArray[1,1] = T11.stringValue
            return
        }
        if a == 1 && b == 2 {
            dataArray[1,1] = T11.stringValue
            dataArray[1,2] = T12.stringValue
            return
        }
        if a == 1 && b == 3 {
            dataArray[1,1] = T11.stringValue
            dataArray[1,2] = T12.stringValue
            dataArray[1,3] = T13.stringValue
            return
        }
        if a == 1 && b == 4 {
            dataArray[1,1] = T11.stringValue
            dataArray[1,2] = T12.stringValue
            dataArray[1,3] = T13.stringValue
            dataArray[1,4] = T14.stringValue
            return
        }
        if a == 2 && b == 1 {
            dataArray[1,1] = T11.stringValue
            dataArray[2,1] = T21.stringValue
            return
        }
        if a == 2 && b == 2 {
            dataArray[1,1] = T11.stringValue
            dataArray[1,2] = T12.stringValue
            dataArray[2,1] = T21.stringValue
            dataArray[2,2] = T22.stringValue
            return
        }
        if a == 2 && b == 3 {
            dataArray[1,1] = T11.stringValue
            dataArray[1,2] = T12.stringValue
            dataArray[1,3] = T13.stringValue
            dataArray[2,1] = T21.stringValue
            dataArray[2,2] = T22.stringValue
            dataArray[2,3] = T23.stringValue
            return
        }
        if a == 2 && b == 4 {
            dataArray[1,1] = T11.stringValue
            dataArray[1,2] = T12.stringValue
            dataArray[1,3] = T13.stringValue
            dataArray[1,4] = T14.stringValue
            dataArray[2,1] = T21.stringValue
            dataArray[2,2] = T22.stringValue
            dataArray[2,3] = T23.stringValue
            dataArray[2,4] = T24.stringValue
            return
        }
        if a == 3 && b == 1 {
            dataArray[1,1] = T11.stringValue
            dataArray[2,1] = T21.stringValue
            dataArray[3,1] = T31.stringValue
            return
        }
        if a == 3 && b == 2 {
            dataArray[1,1] = T11.stringValue
            dataArray[1,2] = T12.stringValue
            dataArray[2,1] = T21.stringValue
            dataArray[2,2] = T22.stringValue
            dataArray[3,1] = T31.stringValue
            dataArray[3,2] = T32.stringValue
            return
        }
        if a == 3 && b == 3 {
            dataArray[1,1] = T11.stringValue
            dataArray[1,2] = T12.stringValue
            dataArray[1,3] = T13.stringValue
            dataArray[2,1] = T21.stringValue
            dataArray[2,2] = T22.stringValue
            dataArray[2,3] = T23.stringValue
            dataArray[3,1] = T31.stringValue
            dataArray[3,2] = T32.stringValue
            dataArray[3,3] = T33.stringValue
            return
        }
        if a == 3 && b == 4 {
            dataArray[1,1] = T11.stringValue
            dataArray[1,2] = T12.stringValue
            dataArray[1,3] = T13.stringValue
            dataArray[2,1] = T21.stringValue
            dataArray[2,2] = T22.stringValue
            dataArray[2,3] = T23.stringValue
            dataArray[3,1] = T31.stringValue
            dataArray[3,2] = T32.stringValue
            dataArray[3,3] = T33.stringValue
            return
        }
        if a == 3 && b == 3 {
            dataArray[1,1] = T11.stringValue
            dataArray[1,2] = T12.stringValue
            dataArray[1,3] = T13.stringValue
            dataArray[1,4] = T14.stringValue
            dataArray[2,1] = T21.stringValue
            dataArray[2,2] = T22.stringValue
            dataArray[2,3] = T23.stringValue
            dataArray[2,4] = T24.stringValue
            dataArray[3,1] = T31.stringValue
            dataArray[3,2] = T32.stringValue
            dataArray[3,3] = T33.stringValue
            dataArray[3,4] = T34.stringValue
            return
        }
        if a == 4 && b == 1 {
            dataArray[1,1] = T11.stringValue
            dataArray[2,1] = T21.stringValue
            dataArray[3,1] = T31.stringValue
            dataArray[4,1] = T41.stringValue
            return
        }
        if a == 4 && b == 2 {
            dataArray[1,1] = T11.stringValue
            dataArray[1,2] = T12.stringValue
            dataArray[2,1] = T21.stringValue
            dataArray[2,2] = T22.stringValue
            dataArray[3,1] = T31.stringValue
            dataArray[3,2] = T32.stringValue
            dataArray[4,1] = T41.stringValue
            dataArray[4,2] = T42.stringValue
            return
        }
        if a == 4 && b == 3 {
            dataArray[1,1] = T11.stringValue
            dataArray[1,2] = T12.stringValue
            dataArray[1,3] = T13.stringValue
            dataArray[2,1] = T21.stringValue
            dataArray[2,2] = T22.stringValue
            dataArray[2,3] = T23.stringValue
            dataArray[3,1] = T31.stringValue
            dataArray[3,2] = T32.stringValue
            dataArray[3,3] = T33.stringValue
            dataArray[4,1] = T41.stringValue
            dataArray[4,2] = T42.stringValue
            dataArray[4,3] = T43.stringValue
            return
        }
        if a == 4 && b == 4 {
            dataArray[1,1] = T11.stringValue
            dataArray[1,2] = T12.stringValue
            dataArray[1,3] = T13.stringValue
            dataArray[1,4] = T14.stringValue
            dataArray[2,1] = T21.stringValue
            dataArray[2,2] = T22.stringValue
            dataArray[2,3] = T23.stringValue
            dataArray[2,4] = T24.stringValue
            dataArray[3,1] = T31.stringValue
            dataArray[3,2] = T32.stringValue
            dataArray[3,3] = T33.stringValue
            dataArray[3,4] = T34.stringValue
            dataArray[4,1] = T41.stringValue
            dataArray[4,2] = T42.stringValue
            dataArray[4,3] = T43.stringValue
            dataArray[4,4] = T44.stringValue
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
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
    }
    
}
