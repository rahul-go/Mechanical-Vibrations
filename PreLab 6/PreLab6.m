%% ME 318 PRELAB 6
% The following script calculates the first three L*lambda values. It uses
% Figure C.1 from the lab manual as guidance for the initial point estimate
% values.

% Error to Minimize
error = @(x) abs(cosh(x)*cos(x) + 1);

% Minimize the Error
L_lambda_1 = fminsearch(error, 2, optimset('TolFun', 1e-6))
L_lambda_2 = fminsearch(error, 5, optimset('TolFun', 1e-6))
L_lambda_3 = fminsearch(error, 8, optimset('TolFun', 1e-6))