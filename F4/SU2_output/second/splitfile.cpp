#include <stdlib.h>
#include <sstream>
#include <fstream>
#include <iostream>
#include <string>
#include <algorithm>

using namespace std;

int main()
{

    ifstream in("output.dat");
    ofstream out;
    string line;
    
    string filename;
    string filenamehead("./bin/file");
    string filenametail(".dat");

    int n_count = -1;    
    string f_count;

    //read from the 239 line
    for(int i = 0; i < 241; i++)
    {
        getline(in,line);
    }


    while(getline(in,line))
    {
        cout << line << endl;

        // printf("%ld\n",count(line.begin(),line.end(),'|'));

        if(count(line.begin(),line.end(),'|') == 6)
            n_count++;

        // printf("%d\n",n_count);
        if(n_count != -1)
        {
            stringstream os1;
            os1 << n_count;
            os1 >> f_count;
        
            filename = filenamehead + f_count + filenametail;

            out.open(filename,ios::app);
            cout << filename <<  n_count << endl;
            out << line <<endl;

            out.close();

        }

        



    }

    in.close();


    return 0;
}