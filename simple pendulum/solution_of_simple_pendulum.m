clear; clc; clf;  % Clear variables, command window, and figure

% Define parameters
g = 9.82;                  % Acceleration due to gravity (m/s^2)
L = 0.5;                   % Length of the pendulum (m)
t = 0:0.02:10;             % Time vector (adjusted for more oscillations)

% Initial angles in degrees
theta0 = [10, 15, 30, 45];

% Loop over each initial angle
for i = 1:length(theta0)
    yi = (pi / 180) * theta0(i);  % Convert initial angle to radians

    % Define the system of ODEs for the pendulum (non-linear)
    pendulumODE = @(t, y) [y(2); -(g / L) * sin(y(1))];

    % Initial conditions: [initial angle, initial angular velocity]
    y0 = [yi; 0];

    % Solve the ODE for the pendulum using ode45
    [T, Y_pendulum] = ode45(pendulumODE, t, y0);

    % Analytical solution for SHM (small-angle approximation)
    Y_shm = yi * cos(sqrt(g / L) * t);  % θ(t) for simple harmonic motion

    % Plotting
    figure(i);  % Create a new figure for each initial angle
    plot(T, Y_pendulum(:, 1), 'b', 'LineWidth', 1.5);  % Plot pendulum solution
    hold on;
    plot(t, Y_shm, 'r--', 'LineWidth', 1.5);  % Plot SHM solution

    % Add labels, title, and legend
    xlabel('Time (s)');
    ylabel('Angular Displacement (rad)');
    title(['Pendulum vs SHM for Initial Angle = ', num2str(theta0(i)), '°']);
    legend('Pendulum (Numerical)', 'SHM (Theoretical)', 'Location', 'best');
    grid on;
end
