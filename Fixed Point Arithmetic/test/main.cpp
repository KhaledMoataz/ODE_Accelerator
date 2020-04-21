#include <bits/stdc++.h>
#include"fixed_point.h"
using namespace std;

const int scaleFactor = 7;
const int numSize = 16;

void interactiveMode();
void generateTestCases();
void RandomBitset(mt19937 &gen, bitset <FixedPoint_Q9_7::numSize> &a, double p);

int main() {
    cout<<"0: Interactive Mode, 1: Random Tests"<<endl;
    bool type;
    cin>>type;
    if (type) generateTestCases();
    else interactiveMode();
}

void interactiveMode(){
    bitset<numSize>a, b, result;
    short temp_a, temp_b;
    int type;
    bool overflow;
    while (1) {
        cout<<"0: Add, 1: Multiply, 2: Divide, 3: Quit"<<endl;
        overflow = false;
    	cin >> type;                            // 0: add, 1: multiply, 2: divide, 3: quit
        if (type == 3) break;
        float f1, f2;
        cin >> f1 >> f2;
        a = FixedPoint_Q9_7::floatToBitSet(f1);
        b = FixedPoint_Q9_7::floatToBitSet(f2);                          //Two operands in binary (16 bits).
        temp_a = (short) a.to_ulong();
        temp_b = (short) b.to_ulong();
        cout << "First Operand: "<<a<<" "; FixedPoint_Q9_7::printFloat(temp_a);
        cout << "Second Operand: "<<b<<" "; FixedPoint_Q9_7::printFloat(temp_b);
        if (type == 1) {
        	result = FixedPoint_Q9_7::multiply(a,b,overflow);
        	if(overflow) printf("OVERFLOW\n");
        } else if (type == 0) {
        	result = FixedPoint_Q9_7::add(a,b,overflow);
        	if(overflow) printf("OVERFLOW\n");
        } else{
            result = FixedPoint_Q9_7::divide(a,b,overflow);
        	if(overflow) printf("OVERFLOW\n");
        }
        cout << "Result: "<<result<<" "; FixedPoint_Q9_7::printFloat(result.to_ulong());
    }
}
void RandomBitset(mt19937 &gen, bitset <FixedPoint_Q9_7::numSize> &a, double p) {
    bernoulli_distribution d(p);
    for (int i = 0; i < FixedPoint_Q9_7::numSize; ++i) {
        a[i] = d(gen);
    }
}
void generateTestCases(){
    random_device rd;
    mt19937 gen(rd());
    bernoulli_distribution distribution(0.5);
    bitset <FixedPoint_Q9_7::numSize> a, b, result;
    bool overflow = false;
    cout<<"Enter number of test cases"<<endl;
    int t;
    cin >> t;
    ofstream cout1("multiplier_test_cases.txt"), cout2("adder_test_cases.txt"), cout3("division_test_cases.txt");
    while (t--) {
        RandomBitset(gen, a, 0.5);
        RandomBitset(gen, b, 0.5);
        overflow = false;
        result = FixedPoint_Q9_7::multiply(a, b, overflow);
        cout1 << a << "_" << b << "_" << result << "_" << overflow << endl;
        overflow = false;
        bool carry_in = distribution(gen) == 1;
        bool carry_out, negative;
        result = FixedPoint_Q9_7::add(a, b, carry_in, carry_out, overflow, negative);
        cout2 << a << "_" << b << "_" << carry_in << "_"
              << result << "_" << carry_out << "_" << overflow << "_" << negative << endl;
        overflow = false;
        result = FixedPoint_Q9_7::divide(a, b, overflow);
        cout3 << a << "_" << b << "_" << result << "_" << overflow << endl;
    }
}


