#Simple Pendulum: Energy and Phase Space Simulation
This repository contains MATLAB code to simulate the motion of a simple pendulum and analyze its behavior. The project demonstrates both the small-angle approximation and the non-linear pendulum equations of motion, focusing on visualizing kinetic energy (KE), potential energy (PE), and total energy (TE) for different initial angles.
________________________________________
Features
•	Energy Analysis:
The code calculates and plots kinetic, potential, and total energy for small-angle and non-linear cases.
•	Phase Space Trajectory:
Visualization of the phase space (angular displacement vs. angular velocity) for various initial angles.
•	Comparison of Small-Angle Approximation vs. Non-Linear Pendulum:
The differences in energy and phase behavior are illustrated clearly.
•	Support for Multiple Initial Angles:
Simulations are run for a range of initial angles to observe variations in pendulum behavior.
________________________________________
Files Included
•	energy.m:
MATLAB code to simulate and plot the kinetic, potential, and total energy of a simple pendulum.
•	phase_space_trajectory.m:
MATLAB code to simulate and plot the phase space trajectory (displacement vs. velocity) of the simple pendulum.
•	solution_of_simple_pendulum.m:
MATLAB code to solve the equation of motion for the simple pendulum and visualize its motion over time.
•	README.md:
Provides an overview of the project, its features, and instructions for running the simulations.
________________________________________
Getting Started
1.	Requirements:
o	MATLAB installed on your system or can access the online compiler on https://matlab.mathworks.com/.
o	Basic understanding of MATLAB’s ode45 solver and pendulum dynamics (helpful, but not necessary).
2.	Running the Code:
o	Open energy.m in MATLAB.
o	Open phase_space_trajectory.m in MATLAB.
o	Open solution_of_simple_pendulum.m in MATLAB.
o	Run the script to generate plots for kinetic energy, potential energy, total energy, and phase space.
o	You can modify the initial angles or simulation time as needed.
________________________________________
Results
•	Energy Graphs (energy.m):
Simulates and plots the time evolution of kinetic, potential, and total energy for different initial angles.
•	Phase Space Diagrams (phase_space_trajectory.m):
Visualizes the phase space trajectory (displacement vs. velocity) of the pendulum, demonstrating behavior for both small-angle approximation and full non-linear cases.
•	Solution of Motion (solution_of_simple_pendulum.m):
Solves the pendulum’s equation of motion and plots its angular displacement and velocity over time.
________________________________________
Future Enhancements
•	Add damping effects to simulate real-world friction.
•	Include support for driven pendulum simulations.
•	Expand the comparison to chaotic pendulum behavior.

