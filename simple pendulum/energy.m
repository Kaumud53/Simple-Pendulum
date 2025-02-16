clear; clc;  % Clear workspace and command window

% Define parameters
m = 1;                   % Mass of the pendulum (kg)
g = 9.82;                % Acceleration due to gravity (m/s^2)
L = 0.5;                 % Length of the pendulum (m)
t = 0:0.01:1.8;          % Time vector

% Initial angles in degrees
theta0 = [10, 175];

% Loop through each initial angle
for i = 1:2
    % Convert initial angle to radians
    initial_angle = (pi / 180) * theta0(i);

    % Define the system of ODEs for the non-linear pendulum
    pendulumODE = @(t, y) [y(2); -(g / L) * sin(y(1))];

    % Initial conditions: [initial angle, initial angular velocity]
    y0 = [initial_angle; 0];

    % Solve the ODE using ode45
    [T, Y] = ode45(pendulumODE, t, y0);

    % Calculate kinetic energy (T = 0.5 * m * L^2 * angular_velocity^2)
    KE = 0.5 * m * (L * Y(:, 2)).^2;

    % Calculate potential energy (V = m * g * L * (1 - cos(θ)))
    PE = m * g * L * (1 - cos(Y(:, 1)));

    % Calculate total energy
    Total_Energy = KE + PE;

    % ---- Plotting ----
    subplot(1, 2, i);  % Create a subplot for each initial angle
    hold on;
    plot(t, KE, '-or', 'LineWidth', 1.5);   % Kinetic energy
    plot(t, PE, '-ob', 'LineWidth', 1.5);   % Potential energy
    plot(t, Total_Energy, '-k', 'LineWidth', 1.5);  % Total energy
    title(['Energy for Initial Angle \theta_0 = ', num2str(theta0(i)), '°']);
    xlabel('Time (s)');
    ylabel('Energy (J)');
    legend('Kinetic Energy', 'Potential Energy', 'Total Energy');
    grid on;
    hold off;
end
