#include <iostream>
#include "step.h"
#include <bits/stdc++.h>


struct TestCase {
    int n;
    fixed_point n_fixed_point, tolerance, initialStep;
    vector<fixed_point> X_0, X_1;
    bool initError;
    bool calcError;
    bool proceed;
    fixed_point finalStep;
};

void randomBitset(mt19937 &gen, int zerosOffset, fixed_point& randomNumber) {
    bernoulli_distribution d(0.5);
    for (int i = 0; i < FixedPoint_Q9_7::numSize - zerosOffset; ++i) {
        randomNumber[i] = d(gen);
    }
}

float bitsetToFloat(const fixed_point& number) {
    return (float)(1.0 * number.to_ulong() / (1 << FixedPoint_Q9_7::scaleFactor));
}

vector<TestCase> generateTestCases(int testCasesCount) {
    vector<TestCase> testCases;
    
    random_device randomDevice;
    mt19937 generator(randomDevice());
    bernoulli_distribution distribution(0.5);

    for(int i = 0; i < testCasesCount; i++) {
        int n = rand() % 25 + 5;
        int zerosOffset = 3 + rand() % 2;
        float toleranceValue = 0.25 * n;
        float initialStep = (i == testCasesCount - 1) ? 9999 : (float(rand()) / RAND_MAX) + 0.5;

        vector<fixed_point> X_0(n), X_1(n);

        for(int j = 0; j < n; j++) {
            randomBitset(generator, zerosOffset, X_0[j]);
            if(i % 2 == 0)
                X_1[j] = FixedPoint_Q9_7::floatToBitSet(
                    bitsetToFloat(X_0[j]) + (float(rand()) / RAND_MAX) - 0.5);
            else
                randomBitset(generator, zerosOffset, X_1[j]);
        }

        bool proceed, initializationError, calculationError;

        fixed_point tolerance = FixedPoint_Q9_7::floatToBitSet(toleranceValue);
        fixed_point step = FixedPoint_Q9_7::floatToBitSet(initialStep);
        StepModule stepModule(FixedPoint_Q9_7::floatToBitSet(n), tolerance, step, initializationError);
        
        proceed = stepModule.updateStep(X_0, X_1, calculationError);

        testCases.push_back({
            n, FixedPoint_Q9_7::floatToBitSet(n), tolerance, step, X_0, X_1, initializationError, 
            calculationError, proceed, stepModule.getStep()
        });
    }

    return testCases;
}

int main(int argc, char *argv[]) {
    int testCasesCount = argc > 1 ? std::stoi(argv[1]) : 5;

    auto testCases = generateTestCases(testCasesCount);

    ofstream writer("test_cases.txt");

    for(auto testCase: testCases) {
        // test case size
        writer << testCase.n << endl;

        // initial values
        writer << testCase.n_fixed_point << " " << testCase.tolerance << " " << testCase.initialStep << endl;

        // inputs
        for(int i = 0; i < testCase.n; i++)
            writer << testCase.X_0[i] << " " << testCase.X_1[i] << endl;

        // outputs
        writer << testCase.initError << " " << testCase.calcError << " " 
            << testCase.proceed << " " << testCase.finalStep << endl;
    }
    writer.close();
}