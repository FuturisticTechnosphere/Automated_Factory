# Robotics & Non-Linear Control Project 

[cite_start]This repository contains the full simulation and implementation of an automated industrial cell and advanced non-linear control strategies developed for the **Foundations of Robotics** course.

## 📌 Project Overview
The project is divided into due main technical challenges:
1.  [cite_start]**Non-Linear Control**: Stability analysis and global stabilization of a 4th-order non-linear system using **Backstepping** techniques.
2.  [cite_start]**Automated Factory**: A complete robotic workspace simulation involving autonomous vehicles (Unicycles), a 2-DOF robotic arm, and a conveyor belt system.

---

## 🛠 Technical Features

### 1. Non-Linear Control & Stability
* [cite_start]**Equilibrium Analysis**: Identification of equilibrium points $(\overline{x}_{1},\overline{x}_{2},\overline{x}_{3})$ for the dynamic model.
* [cite_start]**Lyapunov Stability**: Local stability analysis via the indirect method (Jacobian linearization) [cite_start]and estimation of the **Region of Asymptotic Stability (RAS)** through the direct method.
* [cite_start]**Global Stabilization**: Implementation of a recursive **Backstepping** controller to ensure Global Asymptotic Stability (GAS) for the entire 4-state system.

### 2. Industrial Robotics Simulation (Automated Factory)
[cite_start]A complex "pick-and-place" cycle is simulated with the following components:
* [cite_start]**Autonomous Muletti (M1 & M2)**: Modeled as unicycles  [cite_start]using polar coordinate transformation for point-to-point (P2P) navigation.
* [cite_start]**Robotic Arm**: A horizontal articulated arm with two revolute joints. [cite_start]Dynamics are modeled via the **Euler-Lagrange** formulation [cite_start]and controlled using **Computed Torque Control** (PD + Non-linear compensation).
* [cite_start]**Conveyor Belt**: Modeled as a first-order dominant pole system ($G(s) = \frac{1}{1+s\tau}$) [cite_start]to transport finished boxes to the exit line.
* [cite_start]**System Synchronization**: A bottom-up synchronization logic using automated "flags" to coordinate interaction between the arm, unicycles, and the conveyor belt.

---

## 📂 Repository Structure
* [cite_start]**`/Non-Linear-Control`**: Simulink models and MATLAB scripts for the stability study and backstepping implementation.
* [cite_start]**`/Automated-Factory`**: Integrated simulation of the robotic cell.
    * [cite_start]`muletti_logic.m`: Kinematics and P2P planners.
    * [cite_start]`arm_logic.m`: Hamiltonian dynamics and PD control.
    * [cite_start]`conveyor_logic.m`: Transfer function discretization and control.
    * [cite_start]`sincro_logic.m`: Multi-agent synchronization scripts.

---

## 💻 Requirements
* [cite_start]MATLAB / Simulink 
* Control System Toolbox.

## 👥 Authors 
* [cite_start]**Salvatore Zuccaro**, 
* [cite_start]**Davide Baccarella**, 
* [cite_start]**Roberto Saitta**,
