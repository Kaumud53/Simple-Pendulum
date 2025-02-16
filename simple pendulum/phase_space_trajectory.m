clear; clc;  % Clear variables and command window

% Define parameters
m = 0.5;                  % Mass of the pendulum (kg)
g = 9.82;                 % Acceleration due to gravity (m/s^2)
L = 0.5;                  % Length of the pendulum (m)
t = 0:0.01:10;            % Time vector for 10 seconds

% Initial angles in degrees (1° to 179° with a step size of 10°)
initial_angles = 1:10:179;

% Plotting phase space trajectories for each initial angle
figure;
hold on;  % Allow multiple plots on the same graph
for theta0 = initial_angles
    % Convert initial angle to radians
    initial_angle = (pi / 180) * theta0;

    % Define the system of ODEs for the non-linear pendulum
    pendulumODE = @(t, y) [y(2); -(g / L) * sin(y(1))];

    % Initial conditions: [initial angle, initial angular velocity]
    y0 = [initial_angle; 0];

    % Solve the ODE using ode45
    [T, Y] = ode45(pendulumODE, t, y0);

    % Compute angular momentum: p = m * L^2 * angular_velocity
    angular_momentum = m * L^2 * Y(:, 2);

    % Plot phase space trajectory (Angular displacement vs Angular momentum)
    plot(Y(:, 1), angular_momentum, 'LineWidth', 1.5, 'DisplayName', ['\theta_0 = ', num2str(theta0), '°']);
end

% Add labels, title, legend, and grid
title('Phase Space Trajectories of Non-Linear Pendulum');
xlabel('Angular Displacement (rad)');
ylabel('Angular Momentum (kg·m^2/s)');
legend('show', 'Location', 'bestoutside');  % Display legend outside the plot
grid on;
hold off;
