#ifndef STEP
#define STEP
#include "fixed_point.h"
#include <vector>

using fixed_point = bitset<FixedPoint_Q9_7::numSize>;

class StepModule {
    fixed_point n, tolerance, step, stepCalculationDividend;
    const fixed_point stepCalculationConstant = fixed_point("0000000001110011");

    fixed_point calculateError(
        const vector<fixed_point>& X_0, const vector<fixed_point>& X_1, bool& proceed, bool& calculationError
    ) 
    {
        fixed_point error = FixedPoint_Q9_7::floatToBitSet(0);
        bool carry = false, overflow = false, negative = false;
        calculationError = false;

        // Calculate error
        for(int i = 0; i < X_0.size(); i++) {
            // elementwiseError = X_0 - X_1
            fixed_point elementwiseError = 
                FixedPoint_Q9_7::add(X_0[i], X_1[i], true, carry, overflow, negative);

            if(overflow) {
                cout << "Overflow in calculating elementwise error at index " << i << endl;
                calculationError = true;
                return error;
            }

            // error += abs(elementwiseError)
            if(negative)
                error = FixedPoint_Q9_7::add(error, elementwiseError, true, carry, overflow, negative);
            else
                error = FixedPoint_Q9_7::add(error, elementwiseError, false, carry, overflow, negative);
        
            if(overflow) {
                cout << "Overflow in accumulating error at index " << i << endl;
                calculationError = true;
                return error;
            }
        }

        // Check if error > tolerance
        FixedPoint_Q9_7::add(error, tolerance, true, carry, overflow, negative);

        if(overflow) {
            cout << "Overflow in comparing error to tolerance at index " << endl;
            calculationError = true;
            return error;
        }

        if(negative)
            proceed = true;
        else
            proceed = false;

        return error;
    }

    bool calculateDividend() {
        bool overflow;

        // calculate h^2
        fixed_point stepSquared = FixedPoint_Q9_7::multiply(step, step, overflow);

        if(overflow) {
            return true;
        }

        // calculate 0.9 * tolerance
        fixed_point temp = FixedPoint_Q9_7::multiply(stepCalculationConstant, tolerance, overflow);

        if(overflow) {
            return true;
        }

        // calculate 0.9 * tolerance * h^2
        stepCalculationDividend = FixedPoint_Q9_7::multiply(temp, stepSquared, overflow);  

        if(overflow) {
            return true;
        }

        return false;
    }

public:
    StepModule(fixed_point _n, fixed_point _tolerance, fixed_point _step, bool& calculationError)
    : n(_n), tolerance(_tolerance), step(_step) {
        calculationError = calculateDividend();
    }

    fixed_point getStep() {
        return step;
    }

    bool updateStep(
        const vector<fixed_point>& X_0, const vector<fixed_point>& X_1, bool& calculationError
    ) 
    {
        bool proceed, overflow;
        
        fixed_point error = calculateError(X_0, X_1, proceed, calculationError);

        if(calculationError) {
            return false;
        }
        else if(proceed) {
            return true;
        }
        
        // calculate new step value
        fixed_point temp = FixedPoint_Q9_7::divide(stepCalculationDividend, error, overflow);

        if(overflow) {
            calculationError = true;
            return false;
        }

        step = temp;
        return false;  
    }
};

#endif

