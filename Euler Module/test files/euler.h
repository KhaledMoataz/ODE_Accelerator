#pragma once
#include "fixed_point.h"
#include <bits/stdc++.h>
#define sz(s) int(s.size())
using namespace FixedPoint_Q9_7;

class Euler {
public:
	vector<bitset<numSize>> solve(const vector<vector<bitset<numSize>>>& A, const vector<bitset<numSize>>& X,
		const vector<vector<bitset<numSize>>>& B, const vector<bitset<numSize>>& U, bitset<numSize> h, bool& overflow) {
		vector<bitset<numSize>> ans(sz(A));
		for (int i = 0; i < sz(A); ++i) ans[i] = 0;

		for (int i = 0; i < sz(A); ++i) {
			bool overfloww = false, g = false;
			for (int j = 0; j < sz(X); ++j) {
				bitset<numSize> b = multiply(A[i][j], X[j], overfloww);
				overflow |= overfloww;
				ans[i] = add(ans[i], b, 0, g, overfloww, g) ;
				overflow |= overfloww;
			}
		}

		for (int i = 0; i < sz(B); ++i) {
			bool overfloww = false, g = false;
			for (int j = 0; j < sz(U); ++j) {
				bitset<numSize> b = multiply(B[i][j], U[j], overfloww);
				overflow |= overfloww;
				ans[i] =  add(ans[i], b, 0, g, overfloww, g);
				overflow |= overfloww;
			}
			ans[i] = multiply(ans[i], h, overfloww);
			overflow |= overflow;
		}

		return ans;
	}
};
