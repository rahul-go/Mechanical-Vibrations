function [xdot] = EOM(t, x)

m = 3;                          % Mass (kg)
k = 100;                        % Spring constant (N/m)
l_0 = 5;                        % Unstretched spring length (m)
h = 3;                          % Spacing (m)
    
xdot = [x(2);
        -k*x(1)/m * (1 - l_0/sqrt(x(1)^2+h^2))];

end

