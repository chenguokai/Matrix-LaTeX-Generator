//
//  File_Manager.c
//  Matrix-LaTeX-Generator
//
//  Created by Xim on 2018/7/9.
//  Copyright © 2018年 chenguokai. All rights reserved.
//

#include "File_Manager.h"

//pointer providers
char* pathProvider(void) {
    return path;
}
char* pathProviderForFileOutput() {
    return pathForOutput;
}
char* contentProviderForLaTeXOutput() {
    return contentForOutput;
}

const char resourceFile[] = "Resources/EssentialStrings";
bool properPath = false;
char* readStr(int arg) {
    if (!properPath) {
        //prepare proper path
        int len = (int)(strlen(path));
        for (int i = 1;i <= 28; ++i) {
            path[len-i] = '\0';
        }
        len -= 28;
        int lenres = strlen(resourceFile);
        for (int i = 0; i < lenres; ++i) {
            path[len+i] = resourceFile[i];
        }
        path[len+lenres] = '\0';
        properPath = true;
    }
    //freopen("/Applications/Matrix-LaTeX-Generator.app/Contents/Resources/EssentialStrings", "r", stdin);
    freopen(path, "r", stdin);
    char c;
    int l = 0;
    memset(str, 0, sizeof(str));
    
    while ((void)(scanf("%c",&c)),c!='@') { // @ : magic code to cut the file's contents
        str[l++] = c;
    } //sandbox fixed
    if (arg == 1) {
        return str;
    } else if (arg == 2) { //to EOF
        l = 0;
        while (scanf("%c",&c) != EOF) {
            str2[l++] = c;
        }
        fclose(stdin);
        return str2;
    }
    // to avoid warning
    fclose(stdin);
    return str;
}

int writeLaTeXToFile() {
    freopen(pathForOutput, "w", stdout);
    int len = strlen(contentForOutput); //to avoid warning
    for (int i = 0; i < len; ++i) {
        putchar(contentForOutput[i]);
    }
    fclose(stdout);
    return 0; //good ending
}
