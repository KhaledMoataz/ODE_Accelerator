#ifndef FIXED_POINT
#define FIXED_POINT
#include<iostream>
#include<bitset>
using namespace std;

namespace FixedPoint_Q9_7 {

    const int scaleFactor = 7;
    const int numSize = 16;

    bitset<numSize> multiply(const bitset<numSize> a, const bitset<numSize> b, bool &overflow) {
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

    bitset<numSize> add(const bitset<numSize> a, const bitset<numSize> b, const bool &subtract, bool &cout, bool &overflow, bool &negative) {
        short temp_a, temp_b, temp_b_complement;
        int temp_result;
        temp_a = (short) a.to_ulong();
        temp_b = (short) b.to_ulong();
        if (subtract) {
            temp_result = temp_a - temp_b;
            cout = ((unsigned short) temp_a + (unsigned short) ~temp_b) & (1 << 16);
        } else {
            temp_result = temp_a + temp_b;
            cout = ((unsigned short) temp_a + (unsigned short) temp_b) & (1 << 16);
        }
        negative = temp_result < 0;
        bitset<numSize> result = temp_result;
        if (temp_result != short(temp_result)) {
            overflow = true;
        }
        return result;
    }

    bitset<numSize> add(const bitset<numSize> a, const bitset<numSize> b, bool &overflow) {
        bool cout, negative;
        return add(a, b, false, cout, overflow, negative);
    }

    bitset<numSize> divide(const bitset<numSize> a, const bitset<numSize> b, bool & divideByZero) {
        short temp_a, temp_b, temp_result;
        temp_a = (short) a.to_ulong();
        temp_b = (short) b.to_ulong();
        if (!temp_b){
            divideByZero = true;
            return temp_result;
        }
        temp_result = temp_a / temp_b;
        return temp_result;
    }

    bitset<numSize> floatToBitSet(float x){
        short value = 0;
        bool neg = x<0;
        if(neg) x *= -1;
        int pre = int(x);
        x -= pre;
        value = pre<<scaleFactor;
        int i = 1;
        while (x && i<=scaleFactor){
            x *= 2;
            if (x >= 1) {
                value |= 1<<(scaleFactor - i);
                x -= 1;
            }
            i++;
        }
        if (neg) value *= -1;
        return bitset<numSize>(value);
    }

    void printFloat(short x) {
        double num = 0;
        bool neg = x < 0;
        if (neg) x *= -1;
        for (int i = 0; i < numSize - 1; i++) {
            if (x & (1 << i)) {
                num += pow(2, i - scaleFactor);
            }
        }
        if (neg) num *= -1;
        cout << setprecision(9) << num << endl;
    }
}
#endif