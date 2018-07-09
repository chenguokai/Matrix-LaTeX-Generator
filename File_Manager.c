//
//  File_Manager.c
//  Matrix-LaTeX-Generator
//
//  Created by Xim on 2018/7/9.
//  Copyright © 2018年 chenguokai. All rights reserved.
//

#include "File_Manager.h"


char* readStr(int arg) {
    freopen("/Applications/Matrix-LaTeX-Generator.app/Contents/Resources/EssentialStrings", "r", stdin);
    char c;
    int l = 0;
    for (int i = 0;i < 1000;++i) {
        str[i] = 0;
    }
    
    while ((void)(scanf("%c",&c)),c!='@') { // @ : magic code
        str[l++] = c;
    } //注意：由于当前需要访问绝对路径进行调试，沙盒被关闭，否则不能读取到文件的内容，当程序基本完成时可以将资源文件整合到app内部，从而重新开启沙盒。
    if (arg == 1) {
        return str;
    } else if (arg == 2) { //to EOF
        l = 0;
        while (scanf("%c",&c) != EOF) {
            str2[l++] = c;
        } //注意：由于当前需要访问绝对路径进行调试，沙盒被关闭，否则不能读取到文件的内容，当程序基本完成时可以将资源文件整合到app内部，从而重新开启沙盒。
        return str2;
    }
    // to avoid warning
    return str;
}
