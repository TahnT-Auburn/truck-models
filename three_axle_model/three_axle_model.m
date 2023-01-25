%% Three Axle Tractor Bicycle Model

clc; clear; close all;

%% Substitute symbolic variables
syms a b1 b2 u m J delta C1 C2 C3

%% System Matrices

% inertial matrix
M = inertMat(m, u, J);

% stiffness matrix
K = stiffMat(u,a, b1, b2, delta, C1, C2, C3);

% forcing matrix
F = forceMat(a, delta, C1);

%% State Space System

A = inv(M)*K;
B = inv(M)*F;