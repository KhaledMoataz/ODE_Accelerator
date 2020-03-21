#include<bits/stdc++.h>
#include"fixed_point.h"
using namespace std;

void RandomBitset(bitset<FixedPoint_Q9_7::numSize>& a, double p){
    random_device rd;
    mt19937 gen(rd());
    bernoulli_distribution d(p);

    for(int i = 0; i < FixedPoint_Q9_7::numSize; ++i) {
        a[i] = d( gen);
    }
}
int main(){

	bitset<FixedPoint_Q9_7::numSize> a, b, resultm,resulta;
	bool overflow = false;
	int t; cin>>t;
	ofstream cout1("multiplier_test_cases.txt"),cout2("adder_test_cases.txt");
	while(t--){
		RandomBitset(a,0.2);
		RandomBitset(b,0.2);
		overflow = false;
		resultm = FixedPoint_Q9_7::multiply(a,b,overflow);
		cout1<<a<<"_"<<b<<"_"<<resultm<<"_"<<overflow<<endl;
		overflow = false;
		resulta = FixedPoint_Q9_7::add(a,b,overflow);
		cout2<<a<<"_"<<b<<"_"<<resulta<<"_"<<overflow<<endl;
	}

}


