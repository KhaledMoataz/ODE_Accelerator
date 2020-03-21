#include<iostream>
#include<bitset>
using namespace std;

namespace FixedPoint_Q9_7{

const int scaleFactor = 7;
const int numSize = 16;

bitset<numSize> multiply(const bitset<numSize> a, const bitset<numSize> b, bool& overflow){
	short temp_a, temp_b;
	int temp_result;
	temp_a = (short) a.to_ulong();
	temp_b = (short) b.to_ulong();
	temp_result = temp_a * temp_b;
	temp_result += (1 << (scaleFactor - 1)); //rounding
	temp_result = temp_result >> scaleFactor;
	bitset<numSize> result = temp_result;
	if (temp_result != short(temp_result)) {
		overflow = true;
	}
	return result;
}

bitset<numSize> add(const bitset<numSize> a, const bitset<numSize> b, bool& overflow){
	short temp_a, temp_b;
	int temp_result;
	temp_a = (short) a.to_ulong();
	temp_b = (short) b.to_ulong();
	temp_result = temp_a + temp_b;
	bitset<numSize> result = temp_result;
	if (temp_result != short(temp_result)) {
		overflow = true;
	}
	return result;
}

void printFloat(short x) {
    double num = 0;
    bool neg = x < 0;
    if (neg) x *= -1;
    for (int i = 0; i < numSize - 1; i++) {
        if (x & (1<<i)) {
            num += pow(2, i - scaleFactor);
        }
    }
    if (neg) num *= -1;
    cout << setprecision(9) << num << endl;
}


}
