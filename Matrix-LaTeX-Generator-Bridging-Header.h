//
//  Use this file to import your target's public headers that you would like to expose to Swift.
//  Do not forget to import functions to Swift here!

//  to reduce workload when SWift is updated, we use C as much as possible

char* readStr(int arg);

char* pathProvider(void);

char* pathProviderForFileOutput();

char* contentProviderForLaTeXOutput();

int writeLaTeXToFile();
