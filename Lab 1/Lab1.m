%% ME 318 LAB 1



%% Reset
% The following was used while debugging.

close all;
clear all;
clc;



%% Given
t_0 = 0;                        % Time initial (s)
t_f = 10;                       % Time final (s)

x_0 = [0 + 0.01, 0;             % Case 1 initial conditions (m, m/s)
       4 + 0.01, 0;             % Case 2 initial conditions (m, m/s)
       -4 - 0.01, 0;            % Case 3 initial conditions (m, m/s)
       sqrt(40) - 0.01, 0;      % Case 4 initial conditions (m, m/s)
       sqrt(40) + 0.01, 0];     % Case 5 initial conditions (m, m/s)



%% Solve for x and Plot
% The following uses ODE45 to solve the equations of motion.

% Set the relative tolerance to 1E-6, absolute tolerance to 1E-9
options = odeset('RelTol', 1E-6, 'AbsTol', 1E-9);

% For each case...
for i = 1:length(x_0)
    
    % ODE45
    [t, x] = ode45(@EOM, [t_0, t_f], x_0(i, :), options);
    
    % Plot
    figure;                     % New figure
    plot(t, x(:, 1), 'LineWidth', 2);
    title(['Case ', num2str(i), ' Displacement vs. Time']);
    xlabel('Time (s)');
    ylabel('Displacement (m)');
    
end
