%% Script pra simular o motor CC com controle PWM

% Declarando os parâmetros do Motor
If = 1; % Corrente de Campo - A
La = 0.0025; %Indutância da Armadura - H
Ra = 0.5; %Resistência da Armadura - Ohms
Vn = 120; % Tensão Nominal - V
In = 20;  % Corrente Nominal - A
n = 3000; % Velocidade Nominal - rpm

% Parâmetros da Carga
J = 0.001; %kg.m²
M = (Vn - Ra*In)/(2*pi*n/60)/If
K1 = (M*If*In)/(2*pi*n/60)

% Parâmetros do tempo
w_desejado = [0 n n 0 0 -n -n 0 0].';
t = [0 0.1 0.5 0.6 0.7 1.0 1.2 1.21 1.5].';

% Parâmetros PWM
Vpwm = 565; % V

% Parâmetros PID
p = 10;
i = 50;
d = 0;

% Chamando o modelo no modelsim
%sim('motor_dc_pid.slx')