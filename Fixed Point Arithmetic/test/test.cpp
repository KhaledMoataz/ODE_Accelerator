#include <iostream>
#include <iomanip>
#include <bitset>
#include <cmath>
using namespace std;

const int scaleFactor = 7;
const int numSize = 16;

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

int main() {
    bitset<numSize>a, b, result;
    short temp_a, temp_b;
    int temp_result;
    int type;
    while (1) {
        cin >> type;                            // 0: add, 1: multiply, 2: quit
        if (type == 2) break;
        cin >> a >> b;                          //Two operands in binary (16 bits).
        temp_a = (short) a.to_ulong();
        temp_b = (short) b.to_ulong();

        cout << "First Operand: "; printFloat(temp_a);
        cout << "Second Operand: "; printFloat(temp_b);
        if (type == 1) {
            temp_result = temp_a * temp_b;
            temp_result += (1 << (scaleFactor - 1));
            temp_result = temp_result >> scaleFactor;
            result = temp_result;
            if (temp_result != short(temp_result)) {
                cout << "OVERFLOW" << endl;
                continue;
            }
        } else {
            temp_result = temp_a + temp_b;
            if (temp_result != short(temp_result)) {
                cout << "OVERFLOW" << endl;
                continue;
            }
            result = temp_result;
        }
        cout << "Result (Decimal): "; printFloat(result.to_ulong());
        cout << "Result (Binary): " << result << endl;
    }
}