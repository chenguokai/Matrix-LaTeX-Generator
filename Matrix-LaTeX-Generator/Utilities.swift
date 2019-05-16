//
//  Utilities.swift
//  Matrix-LaTeX-Generator
//
//  Created by Xim on 2018/7/10.
//  Copyright © 2018年 chenguokai. All rights reserved.
//

import Foundation
import Cocoa
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


let appendStringForOutputBeginning = "\\documentclass{ctexart}\n\\usepackage{geometry}\n\\usepackage{amsmath}\n\\usepackage{amsfonts}\n\\begin{document}\n"
let appendStringForOutputEnding = "\\end{document}"

func patchContentForOutput(origin: String) ->String {
    var ret = origin
    ret = appendStringForOutputBeginning + ret
    ret = ret + appendStringForOutputEnding
    return ret
}


