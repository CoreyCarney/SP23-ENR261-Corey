% Program_06_1
% Written by Corey Carney

% compute monthly loan payment given: Principle, Yearly interest rate, and number of payments in months

function payment = getMonthlyLoanPayment(principal, yearlyRate, numPayments)
    P = [principal, 0,0];
    r = yearlyRate/12;
    payment = P.*(r.*(1.+r).^numPayments/((1.+r).^numPayments-1));
    if principal == 0
        payment = 0;
    end
    if (principal<0) % test negative principal
        payment = 0;
    end
    if (yearlyRate<0) % test negative rate
        payment = [];
    end
    % test empty principal
    if principal == []
        payment = 0;
    end
    %test empty rate
    if yearlyRate == []
        payment = [];
    end
    %test empty numPayments
    if numPayments == []
        payment = [];
    end
    %test string principal
    if isStringScalar(principal)
        payment = [];
    end
    %test string rate
    if isStringScalar(yearlyRate)
        payment = [];
    end
    %test string num payments
    if isStringScalar(numPayments)
        payment = [];
    end
    
end
%   GETMONTHLYLOANPAYMENT Calculate the monthly payment for a loan
%   Using the standard loan payment calculation A=P(r(1+r)^n/((1+r)^n-1))
%   determine the monthly payment amount for a loan. This function assumes
%   payments are made monthly, and that numPayments is the number of
%   months
%   in the duration of the loan. If an invalid state or error occurs, the
%   payment value will be empty.

% When provided with vectors of data for each parameter, return a vector of monthly payment amounts

% Return an empty value if an error occurred such as a negative value, a
% string value in any of the arguments passed in, empty values for any of
% the arguments passed in etc.

% testMonthlyLoanPayment