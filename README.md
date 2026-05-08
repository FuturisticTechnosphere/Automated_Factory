# Robotics & Non-Linear Control Project 

This repository contains the full simulation and implementation of an automated industrial cell and advanced non-linear control strategies developed for the **Foundations of Robotics** course.

## 📌 Project Overview
The project is divided into due main technical challenges:
1.  [cite_start]**Non-Linear Control**: Stability analysis and global stabilization of a 4th-order non-linear system using **Backstepping** techniques.
2.  [cite_start]**Automated Factory**: A complete robotic workspace simulation involving autonomous vehicles (Unicycles), a 2-DOF robotic arm, and a conveyor belt system.

---

## 🛠 Technical Features

### 1. Non-Linear Control & Stability
* **Equilibrium Analysis**: Identification of equilibrium points $(\overline{x}_{1},\overline{x}_{2},\overline{x}_{3})$ for the dynamic model.
* **Lyapunov Stability**: Local stability analysis via the indirect method (Jacobian linearization) and estimation of the **Region of Asymptotic Stability (RAS)** through the direct method.
* **Global Stabilization**: Implementation of a recursive **Backstepping** controller to ensure Global Asymptotic Stability (GAS) for the entire 4-state system.

### 2. Industrial Robotics Simulation (Automated Factory)
A complex "pick-and-place" cycle is simulated with the following components:
* **Autonomous Muletti (M1 & M2)**: Modeled as unicycles using polar coordinate transformation for point-to-point (P2P) navigation.
* **Robotic Arm**: A horizontal articulated arm with two revolute joints. [cite_start]Dynamics are modeled via the **Euler-Lagrange** formulation and controlled using **Computed Torque Control** (PD + Non-linear compensation).
* **Conveyor Belt**: Modeled as a first-order dominant pole system ($G(s) = \frac{1}{1+s\tau}$) to transport finished boxes to the exit line.
* **System Synchronization**: A bottom-up synchronization logic using automated "flags" to coordinate interaction between the arm, unicycles, and the conveyor belt.

---

## 📂 Repository Structure
* **`/Non-Linear-Control`**: Simulink models and MATLAB scripts for the stability study.
* **`/Backstepping`**: Simulink models and MATLAB scripts for backstepping implementation.
* **`/AutomatedFactory`**: Integrated simulation of the robotic cell.

---

## 💻 Requirements
* MATLAB / Simulink 
* Control System Toolbox.

## 👥 Authors 
* [cite_start]**Salvatore Zuccaro**, 
* [cite_start]**Davide Baccarella**, 
* [cite_start]**Roberto Saitta**,
