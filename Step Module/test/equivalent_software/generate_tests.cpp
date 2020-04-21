#include <iostream>
#include "step.h"
#include <bits/stdc++.h>


struct TestCase {
    int n;
    fixed_point tolerance, initialStep;
    vector<vector<fixed_point>> X_0s, X_1s;
    vector<bool> calcError;
    vector<bool> proceed;
    vector<fixed_point> finalStep;
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

TestCase generateTests(int iterations) {
    TestCase test;

    random_device randomDevice;
    mt19937 generator(randomDevice());
    bernoulli_distribution distribution(0.5);

    // init parameters
    int n = rand() % 25 + 5;
    int zerosOffset = 3 + rand() % 2;
    float toleranceValue = 0.25 * n;
    float initialStep = (float(rand()) / RAND_MAX) + 0.5;

    bool initError, proceed, calcError;

    fixed_point tolerance = FixedPoint_Q9_7::floatToBitSet(0.25 * n);
    fixed_point step = FixedPoint_Q9_7::floatToBitSet(initialStep);
    StepModule stepModule(FixedPoint_Q9_7::floatToBitSet(n), tolerance, step, initError);

    if(initError)
        cout << "Overflow during initialization." << endl;

    test.n = n;
    test.initialStep = step;
    test.tolerance = tolerance;

    cout << n << " " << toleranceValue << " " << initialStep << endl;
    
    // Generate X's for all iterations
    for(int i = 0; i < iterations; i++) {
        cout << "Iteration " << i << endl;
        vector<fixed_point> X_0(n), X_1(n);

        for(int j = 0; j < n; j++) {
            randomBitset(generator, zerosOffset, X_0[j]);
            // For the last iteration X_1 = 0, to get an overflow calculating the error
            if (i == iterations -1 ) {
                X_1[j] = FixedPoint_Q9_7::floatToBitSet(0);
            }
            // For even iterations, generate X_1 very close to X_0
            else if(i % 2 == 0)
                X_1[j] = FixedPoint_Q9_7::floatToBitSet(
                    bitsetToFloat(X_0[j]) + (float(rand()) / RAND_MAX) - 0.5);
            // For odd iterations, generate X_1 randomly
            else
                randomBitset(generator, zerosOffset, X_1[j]);
            cout << bitsetToFloat(X_0[j]) << " " << bitsetToFloat(X_1[j]) << endl;
        }

        proceed = stepModule.updateStep(X_0, X_1, calcError);

        test.proceed.push_back(proceed);
        test.calcError.push_back(calcError);
        test.finalStep.push_back(stepModule.getStep());
        test.X_0s.push_back(X_0);
        test.X_1s.push_back(X_1);
    }

    return test;
}

int main(int argc, char *argv[]) {
    int iterations = argc > 1 ? std::stoi(argv[1]) : 5;
    string outputFileName = argc > 2 ? argv[2] : "tests.txt";

    cout << argc << endl;

    auto test = generateTests(iterations);

    ofstream writer(outputFileName);

    
    writer << test.n << " " << iterations << endl;

    // outputs
    for(int i = 0; i < iterations; i++) {
        writer << test.calcError[i] << " " << test.proceed[i] << " " << test.finalStep[i] << endl;
    }

    // RAM contents
    bitset<FixedPoint_Q9_7::numSize> n_binary = 
        FixedPoint_Q9_7::floatToBitSet(test.n) >> FixedPoint_Q9_7::scaleFactor;
    writer << n_binary <<  endl << test.tolerance << endl << test.initialStep << endl;

    for(int i = 0; i < iterations; i++) {
        for(auto X_0: test.X_0s[i])
            writer << X_0 << endl;
        
        for(auto X_1: test.X_1s[i])
            writer << X_1 << endl;

    }
    writer.close();
}