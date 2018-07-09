//
//  Algo.swift
//  Matrix-LaTeX-Generator
//
//  Created by Xim on 2018/7/3.
//  Copyright © 2018年 chenguokai. All rights reserved.
//

import Foundation
import Cocoa
//This file stores the algorithms used in the program

var dataArray = Array2D(columns: 6, rows: 6, initialValue: " ") //-1:empty
var x = 0, y = 0
func GetXY(a: Int, b: Int) {
    x = a;
    y = b;
}
var MatrixSymbol:String = "A"

func Gen_LaTeX() -> String { //May be able to be used in calculator
    //let homeDir = NSHomeDirectory()
    var ret:String = ""
    var a:String = ""
    
    var b:String = ""
    
    
    a = String.init(cString: readStr(1))
    ret = a;
    for i in 1...x {
        for j in 1...y {
            ret = ret + dataArray[i,j] + " & "
        }
        ret = String(ret.dropLast())
        ret = String(ret.dropLast())
        //_ = ret.dropLast()
        if i < x {
            ret.append("\\\\\n")
        }
    }
    b = String.init(cString: readStr(2))
    ret = ret + b
    return ret
}

public struct Array2D<T> { //a kind of 2D array
    public let columns: Int
    public let rows: Int
    fileprivate var array: [T]
    
    public init(columns: Int, rows: Int, initialValue: T) {
        self.columns = columns
        self.rows = rows
        array = .init(repeating: initialValue, count: rows*columns)
    }
    
    public subscript(column: Int, row: Int) -> T {
        get {
            precondition(column < columns, "Column \(column) Index is out of range. Array<T>(columns: \(columns), rows:\(rows))")
            precondition(row < rows, "Row \(row) Index is out of range. Array<T>(columns: \(columns), rows:\(rows))")
            return array[row*columns + column]
        }
        set {
            precondition(column < columns, "Column \(column) Index is out of range. Array<T>(columns: \(columns), rows:\(rows))")
            precondition(row < rows, "Row \(row) Index is out of range. Array<T>(columns: \(columns), rows:\(rows))")
            array[row*columns + column] = newValue
        }
    }
}

extension NSAlert { //quickly send an alert
    
    static func showAlert(title: String?, message: String?, style: NSAlert.Style = .informational) {
        let alert = NSAlert()
        if let title = title {
            alert.messageText = title
        }
        if let message = message {
            alert.informativeText = message
        }
        alert.alertStyle = style
        alert.runModal()
    }
    
}

func copyToClipBoard(textToCopy: String) {
    let pasteBoard = NSPasteboard.general
    pasteBoard.clearContents()
    pasteBoard.setString(textToCopy, forType: .string)
    
}



