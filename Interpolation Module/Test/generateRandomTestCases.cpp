#include<iostream>
#include <bits/stdc++.h>
#include"../../Fixed Point Arithmetic/test/fixed_point.h"
#include <ctime>
//g++ generateRandomTestCases.cpp -o generateRandomTestCases

const int scaleFactor = 7;
const int numSize = 16;

using namespace std;

void RandomBitset(mt19937 &gen, bitset <FixedPoint_Q9_7::numSize> &a, double p) {
    bernoulli_distribution d(p);
    for (int i = 0; i < FixedPoint_Q9_7::numSize; ++i) {
        a[i] = d(gen);
    }
}

float RandmFloatInRange(float M, float N)
{
    srand(time(NULL));
    return M + (rand() / ( RAND_MAX / (N-M) ) ) ;  
}

int main() {

    random_device rd;
    mt19937 gen(rd());
    bernoulli_distribution distribution(0.5);
    bitset <FixedPoint_Q9_7::numSize> a, b, result,m;
    bool overflow = false;
    vector<bitset <FixedPoint_Q9_7::numSize>> time;
    int no_of_Us ;
    cout<<"Enter num of U's:"<<endl;
    cin >> no_of_Us;
    cout<<"Enter M size"<<endl;
    float M_as_int;
    cin >>M_as_int;
    m = FixedPoint_Q9_7::floatToBitSet(M_as_int);
    float temp = 0;
    for (int i = 0; i <no_of_Us+1 ; i++)//generate T's at 0,1,2....etc
    {  
        temp+=i;
        time.push_back(FixedPoint_Q9_7::floatToBitSet(temp));
    }
    ofstream cout1("Interpolation_test_cases.txt");
    // write m value to the file
    cout1<<m<<endl;
    // write the times to the file
    for (int i = 0; i <no_of_Us+1 ; i++)
    {
        cout1<<time[i]<<endl;
    }
    int j = 0;
    vector<bitset <FixedPoint_Q9_7::numSize>> old_uz;
    while (j < no_of_Us)
    {
        bool advance = true;
        vector<bitset <FixedPoint_Q9_7::numSize>> un,uz,uk;
        bitset <FixedPoint_Q9_7::numSize> tn,tz,tk,k,mul_temp,temp1,temp2;
        // generate the un and uz
        if (j == 0)
        {
            for (int i = 0; i < M_as_int; i++)
            {
                RandomBitset(gen, a, 0.5);
                RandomBitset(gen, b, 0.5);
                un.push_back(a);
                uz.push_back(b);
            }    
        }
        else{
            for (int i = 0; i < M_as_int; i++)
            {
            RandomBitset(gen, b, 0.5);
            uz.push_back(b);
            }
            un = old_uz;
        }
        
        
        // get values of tn,tz
        tn = time[j];
        tz = time[j+1];
        //generate tk betweeen tn and tz
        float tk_in = RandmFloatInRange(j,j+1);
        tk = FixedPoint_Q9_7::floatToBitSet(tk_in);
        //start calculating Uk
        bool negative;
        bool subtract = true;
        bool carryOut;
        for (int w = 0; w < M_as_int; w++)
        {   //tk-tn
            overflow = false;
            subtract = true;
            temp1 = FixedPoint_Q9_7::add(tk,tn,subtract,carryOut,overflow,negative);
            if (overflow)
            {
                advance = false;
            }
            //tz-tk
            overflow = false;
            subtract = true;
            temp2 = FixedPoint_Q9_7::add(tz,tk,subtract,carryOut,overflow,negative);
            if (overflow)
            {
                advance = false;
            }
            // k = temp1/temp2 (note will use mul mo2qtn)
            overflow = false;
            k = FixedPoint_Q9_7::multiply(temp1,temp2,overflow);
            if (overflow)
            {
                advance = false;
            }
            //temp1 = uz[i]-un[i]
            overflow = false;
            subtract = true;
            temp1 = FixedPoint_Q9_7::add(uz[w],un[w],subtract,carryOut,overflow,negative);
            if (overflow)
            {
                advance = false;
            }
            //mul_result  = k*temp1
            overflow = false;
            mul_temp = FixedPoint_Q9_7::multiply(k,temp1,overflow);
            if (overflow)
            {
                advance = false;
            }
            
            //result = un[i] + mul_result
            overflow = false;
            subtract = false;
            result = FixedPoint_Q9_7::add(mul_temp,un[w],subtract,carryOut,overflow,negative);
            if (overflow)
            {
                advance = false;
            }
            //save the result in uk[i]
            uk.push_back(result);            
        }
        // after calculating Uk make sure no over flow happend before writing to the file
        if (advance)
        {
            //if here no over flow
            //write tk value 
            cout1<<tk<<endl;
            //write the U's values
            
            if (j == 0)
            {
                for (int i = 0; i <un.size() ; i++)
                {
                    cout1<<un[i]<<endl;
                }
                old_uz = uz;
            }
            for (int i = 0; i < uz.size(); i++)
            {
                cout1<<uz[i]<<endl;
            }
            for (int i = 0; i < uk.size(); i++)
            {
                cout1<<uk[i]<<endl;
            }
            j++;
        }

        
    }
    
    
    
    

    


    /*float x,y;
    bitset<numSize>a, b, result;
    short temp_a, temp_b;
    int type;
    bool overflow;
    while (1) {
        overflow = false;
    	cin >> type;                            // 0: add, 1: multiply, 2: quit
        if (type == 2) break;
        cin >> x >> y;
        a = FixedPoint_Q9_7::floatToBitSet(x);                          //Two operands in binary (16 bits).
        b= FixedPoint_Q9_7::floatToBitSet(y);
        temp_a = (short) a.to_ulong();
        temp_b = (short) b.to_ulong();
        cout << "First Operand:"; FixedPoint_Q9_7::printFloat(temp_a);
        cout << "First Operand  (binary): "<<a<<endl;
        cout << "Second Operand: "; FixedPoint_Q9_7::printFloat(temp_b);
        
        cout << "Second Operand (binary): "<<b<<endl;
        if (type == 1) {
        	result = FixedPoint_Q9_7::multiply(a,b,overflow);
        	if(overflow) printf("OVERFLOW\n");
        } else {
        	result = FixedPoint_Q9_7::add(a,b,overflow);
        	if(overflow) printf("OVERFLOW\n");
        }
        cout << "Result (Decimal): "; FixedPoint_Q9_7::printFloat(result.to_ulong());
        cout << "Result (Binary): " << result << endl;
    }

    */

   return 0;
}
