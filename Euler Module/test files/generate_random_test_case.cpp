#include <bits/stdc++.h>
#include <random>
using namespace std;
const int MAX_DIM = 50;
#include"Euler.h"

void fill_random(vector<vector<bitset<numSize>>>& mat, vector<bitset<numSize>>& vec, int n, int m) {
	mat.resize(n);
	vec.resize(m);
	for (int i = 0; i < n; ++i) {
		mat[i].resize(m);
		for (int j = 0; j < m; ++j) {
			float f = static_cast <float> (rand()) / (static_cast <float> (RAND_MAX / (MAX_DIM/8.0) ));
			bool neg = rand() % 2 == 1;
			bitset<numSize> b = floatToBitSet(neg ? -f : f);
			mat[i][j] = b;
		}
	}

	for (int i = 0; i < m; ++i) {
		float f = static_cast <float> (rand()) / (static_cast <float> (RAND_MAX / (MAX_DIM/8.0) ));
		bool neg = rand() % 2 == 1;
		bitset<numSize> b = floatToBitSet(neg ? -f : f);
		vec[i] = b;
	}
}



int main()
{
	ofstream cout1("input.txt");
	ofstream cout2("output.txt");
	srand(time(0));
	Euler euler;
	int n = rand()%MAX_DIM+1, m = rand()%MAX_DIM+1;
	bool overflow = false;
	float hh = static_cast <float> (rand()) / static_cast <float> (RAND_MAX);
	bitset<numSize> h = floatToBitSet(hh);
	cout1 << h << endl << n << endl << m << endl;
	vector<vector<bitset<numSize>>> A, B;
	vector<bitset<numSize>> X, U;
	fill_random(A, X, n, n);
	fill_random(B, U, n, m);
	for (int i = 0; i < n; ++i) cout1 << X[i] << endl;
	for (int i = 0; i < n; ++i) for (int j = 0; j < n; ++j) cout1 << A[i][j] << endl;
	for (int i = 0; i < m; ++i) cout1 << U[i] << endl;
	for (int i = 0; i < n; ++i) for (int j = 0; j < m; ++j) cout1 << B[i][j] << endl;
	vector<bitset<numSize>> res = euler.solve(A,X,B,U,h,overflow);
	cout2 << overflow << endl;
	for (int i = 0; i < sz(res); ++i) cout2 << res[i] << endl;
}


