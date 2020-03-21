#include <iostream>
#include <iomanip>
#include <bitset>
#include <cmath>
#include"fixed_point.h"
using namespace std;

const int scaleFactor = 7;
const int numSize = 16;

int main() {
    bitset<numSize>a, b, result;
    short temp_a, temp_b;
    int type;
    bool overflow;
    while (1) {
        overflow = false;
    	cin >> type;                            // 0: add, 1: multiply, 2: quit
        if (type == 2) break;
        cin >> a >> b;                          //Two operands in binary (16 bits).
        temp_a = (short) a.to_ulong();
        temp_b = (short) b.to_ulong();
        cout << "First Operand: "; FixedPoint_Q9_7::printFloat(temp_a);
        cout << "Second Operand: "; FixedPoint_Q9_7::printFloat(temp_b);
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
}

