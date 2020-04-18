#include <bits/stdc++.h>
#include "fixed_point.h"

using namespace std;

void RandomBitset(mt19937 &gen, bitset <FixedPoint_Q9_7::numSize> &a, double p) {
    bernoulli_distribution d(p);
    for (int i = 0; i < FixedPoint_Q9_7::numSize; ++i) {
        a[i] = d(gen);
    }
}

int main() {
    random_device rd;
    mt19937 gen(rd());
    bernoulli_distribution distribution(0.5);
    bitset <FixedPoint_Q9_7::numSize> a, b, result;
    bool overflow = false;
    int t;
    cin >> t;
    ofstream cout1("multiplier_test_cases.txt"), cout2("adder_test_cases.txt");
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
    }
}
