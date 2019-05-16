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

var dataArray = Array2D(columns: 7, rows: 7, initialValue: " ") //-1:empty
var x = 0, y = 0
func GetXY(a: Int, b: Int) {
    x = a;
    y = b;
}
var MatrixSymbol:String = "A"

func Gen_LaTeX() -> String { //May be able to be used in calculator
    var bufferSize:UInt32 = 1000  //the length for the buffer
    _NSGetExecutablePath(pathProvider(), &bufferSize)
    //var homeDirC = pathProvider()
    //homeDirC?.assign(from: homeDir, count: homeDir.lengthOfBytes(using: String.Encoding.ascii))  //OK,works fine for C to get path!
    //print(homeDirC)
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
        ret = String(ret.dropLast())  //remove the last two characters to maintain a proper format
        //_ = ret.dropLast()
        if i < x {
            ret.append("\\\\\n") //ugly code I wanted to avoid
        }
    }
    b = String.init(cString: readStr(2))
    ret = ret + b
    return ret
}





func LaTeXToFile(path: String) {
    let FilePathC = pathProviderForFileOutput()
    FilePathC?.assign(from: path,count: path.lengthOfBytes(using: String.Encoding.ascii))
    let FileContentC = contentProviderForLaTeXOutput()
    var contentString = Gen_LaTeX()
    contentString = patchContentForOutput(origin: contentString)
    FileContentC?.assign(from: contentString,count: contentString.lengthOfBytes(using: String.Encoding.ascii)) //need all data to be ok
    if writeLaTeXToFile() == 1 {
        //ok
    }
}
