//
//  File_Manager.h
//  Matrix-LaTeX-Generator
//
//  Created by Xim on 2018/7/9.
//  Copyright © 2018年 chenguokai. All rights reserved.
//

#ifndef File_Manager_h
#define File_Manager_h

#include <stdio.h>   // what I really need
#include <string.h>  //string related stuff
#include <memory.h>  //memset
#include <stdbool.h>
char str[1000];   //used for the first part
char str2[1000];  //used for the second part
char path[1000];  //path is uesful now because of a new way to transfer the path from Swift to C
char pathForOutput[1000];
char contentForOutput[10000]; //it should be enough
#endif /* File_Manager_h */
