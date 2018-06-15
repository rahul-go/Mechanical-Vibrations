function [xdot] = EOM(t, x)

m = 0.610;                      % Mass of pendulum bob (kg)
g = 9.81;                       % Gravitational constant (m/s^2)
k = 4.48;                       % Spring constant (N/m)
l_1 = 0.383;                    % Mass bob location (m)
l_2 = 0.762;                    % Spring location (m)

theta_1 = x(1);                 % Easy access to theta 1
theta_2 = x(3);                 % Easy access to theta 2

xdot(1) = x(2);
xdot(2) = -1 * (m*g*l_2*theta_1 + k*l_1^2*(theta_1-theta_2)) / (m*l_2^2);
xdot(3) = x(4);
xdot(4) = -1 * (m*g*l_2*theta_2 + k*l_1^2*(theta_2-theta_1)) / (m*l_2^2);

xdot = xdot';

end