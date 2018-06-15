%% ME 318 LAB 5



%% Reset
% The following was used while debugging.

close all;
clear all;
clc;



%% Initial Conditions
theta_1 = deg2rad(5);           % Initial angular displacement (rad)
omega_1 = deg2rad(0);           % Initial angular velocity (rad/s)
theta_2 = deg2rad(0);           % Initial angular displacement (rad)
omega_2 = deg2rad(0);           % Initial angular velocity (rad/s)

x_0 = [theta_1, omega_1, theta_2, omega_2];

t_0 = 0;                        % Time initial (s)
t_f = 30;                       % Time final (s)

%% Solve for x and Plot
% The following uses ODE45 to solve the equations of motion.

% Set the relative tolerance to 1E-6, absolute tolerance to 1E-9
options = odeset('RelTol', 1E-6, 'AbsTol', 1E-9);

% ODE45
[t, x] = ode45(@EOM, [t_0, t_f], x_0, options);

% Plot
plot(t, x(:, 1), 'LineWidth', 2);
title('Matlab Output for the Non-Mode');
xlabel({'Time (s)'
        ''
        % Figure label
        '\bfFigure 3B: \rmMatlab output for the non-mode.'});
ylabel('Angular Displacement (rad)');