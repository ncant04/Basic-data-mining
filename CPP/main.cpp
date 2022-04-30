//
//  main.cpp
//  Basic data mining
//
//  Created by Nicolò Cantori on 29/04/22.
//

#include <iostream>
#include <fstream>
#include <string>
using namespace std;

int main(void)
{
    ifstream fin("GDB13_Subset-ABCDEFGH.smi");
    
    string input;
    cout << "What do you want to look for in the file? : ";
    cin >> input;
    
    unsigned int total = 0;
    unsigned int found = 0;
    string temp;
    
    while (fin.good())
    {
        fin >> temp;
        if (fin.good())
        {
            total++;
        }
        
        if (temp.find(input) != string::npos)
        {
            cout << temp << endl;
            found++;
        }
    }
    
    cout << "Total: " << total << endl;
    cout << "Found: " << found << endl;
    cout << "Pct.: " << 100 * double(found) / double(total) << " %" << endl;
    
    return 0;
}
