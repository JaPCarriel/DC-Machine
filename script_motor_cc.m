%% Script to simulate the DC Motor with a PWM controller
%% Script para simular o motor CC com controle PWM

% Motor parameters (value; parameter - Unit)
% Declarando os parâmetros do Motor
If = 1; % Field Current - A | Corrente de Campo - A
La = 0.0025; % Armature Inductance - H | Indutância da Armadura - H
Ra = 0.5; % Armature Resistance - Ohms | Resistência da Armadura - Ohms
Vn = 120; % Nomival Voltage - V | Tensão Nominal - V
In = 20;  % Nominal Current - A | Corrente Nominal - A
n = 3000; % Nominal Velocity - rpm | Velocidade Nominal - rpm

% Load Parameters
% Parâmetros da Carga
J = 0.001; % Servo Motor Inertia - kg.m² | Momento de Inercia no Servo motor - kg.m² 
M = (Vn - Ra*In)/(2*pi*n/60)/If %A constant related to the motor Geometry.
K1 = (M*If*In)/(2*pi*n/60) %Torque - N.m

% Time parameters
% Parâmetros do tempo
w_desejado = [0 n n 0 0 -n -n 0 0].'; %% w expected
t = [0 0.1 0.5 0.6 0.7 1.0 1.2 1.21 1.5].'; %% time

% PWM parameters
% Parâmetros PWM
Vpwm = 565; % V

% PID parameters
% Parâmetros PID
p = 10;
i = 50;
d = 0;

% Chamando o modelo no modelsim
%sim('motor_dc_pid.slx')
