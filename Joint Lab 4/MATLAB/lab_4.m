% Plot interpreter settings
set(groot,'defaulttextinterpreter','latex');
set(groot, 'defaultAxesTickLabelInterpreter','latex');
set(groot, 'defaultLegendInterpreter','latex');

%% Parameters

% Frequency grid
f = [flip(-logspace(-5,5,1000)),logspace(-5,5,1000)];
om = 2*pi*f;

% Physical parameters
g = 9.81;
d = 0.502;
M = 71.4;
m = 165;
L = 1.75;
I = 1/3*m*L^2;
b = 1;

q = (M + m)*(I + m*L^2) - (m*L)^2;

% Angle plant TF coefficients
A = (4*m*L)/(d*q);
B = 1;
C = b*(I + m*L^2)/q;
D = -(M+m)*m*g*L/q;
E = -b*m*g*L/q;

% Position plant TF coefficients
AX = 4*(I + m*L^2)/(d*q);
BX = -(4*g*m*L)/(d*q);
CX = 1;
DX = C;
EX = D;
FX = E;

%% Plant

% Plant TF numerical calculations
w = 1i*om;
P = A*w ./ (B*w.^3 + C*w.^2 + D*w + E);
PX = (AX*w.^2 + BX) ./ (CX*w.^4 + DX*w.^3 + EX*w.^2 + FX*w);
P_tf = tf([A, 0],[B, C, D, E]);

%% PID control design

% PID controller parameters
K_P = 500;
K_D = 150;
K_I = 150;

% TF calculations
Cs = K_D*w + K_P + K_I./w; % Controller
L = A*(K_D*w.^2 + K_P*w + K_I) ./ (B*w.^3 + C*w.^2 + D*w + E); % Angle loop gain
LX = Cs.*PX; % Position loop gain
S = 1 ./(1 + L); % Angle sensitivity function
CLP = P ./ (1 + L); % Angle closed-loop TF

% Parametric models
PC_tf = tf([A*K_D, A*K_P, A*K_I],[B, C, D, E]); % Angle loop gain
S_tf = tf([B,C,D,E],[B,(A*K_D+C),(A*K_P+D),(A*K_I+E)]); % Angle sensitivity function
CLP_tf = tf([A, 0],[B, (A*K_D + C), (A*K_P + D), (A*K_I + E)]); % Angle closed-loop TF
CLP_x = tf([AX*K_D, AX*K_P, AX*K_I+BX*K_D, BX*K_P, BX*K_I],[CX, AX*K_D+DX, AX*K_P+EX, AX*K_I+BX*K_D+FX, BX*K_P, BX*K_I]); % Position closed-loop TF

%% Plots

% Nyquist stability margin
THETAS = linspace(-pi,pi,400);
XS = 0.5*cos(THETAS);
YS = 0.5*sin(THETAS);

% Plant Nyquist plot
Figure_1 = figure(1);
plot(XS-1, YS, 'r'); hold on;
plot(real(P),imag(P),'b'); hold off;
grid on;
axis([-2, 2, -2, 2]);
axis square;
xlabel('$$\Re(P(s))$$');
ylabel('$$\Im(P(s))$$');
title('Nyquist plot of plant P(s)');

% Angle loop gain Nyquist plot
Figure_2 = figure(2);
plot(XS-1, YS, 'r'); hold on;
plot(real(L),imag(L),'b'); hold off;
grid on;
axis([-130, 10, -70, 70]);
axis square;
xlabel('$$\Re(P(s))$$');
ylabel('$$\Im(P(s))$$');
title('Nyquist plot of loop gain L(s)');

% Angle plant, controller, and loop gain magnitude
Figure_3 = figure(3);
loglog(f(1001:end),abs(P(1001:end)),'r'); hold on;
loglog(f(1001:end),abs(Cs(1001:end)),'g');
loglog(f(1001:end),abs(L(1001:end)),'Color',1/255*[39,0,139]); hold off;
grid on;
axis([1e-4 1e2 1e-8 1e6]);
xlabel('Hz');
ylabel('rad/N-m');
title('Loop gain magnitude');
legend('$$|P(s)|$$','$$|C(s)|$$','$$|L(s)|$$','Location','best');

% Angle plant, controller, and loop gain phase
Figure_4 = figure(4);
semilogx(f(1001:end),unwrap(angle(P(1001:end)))*180/pi,'r'); hold on;
semilogx(f(1001:end),unwrap(angle(Cs(1001:end)))*180/pi,'g');
semilogx(f(1001:end),unwrap(angle(L(1001:end)))*180/pi,'Color',1/255*[39,0,139]); hold off;
grid on;
axis([1e-4 1e2 -200 300]);
xlabel('Hz');
ylabel('deg');
title('Loop gain phase');
legend('$$\angle{P(s)}$$','$$\angle{C(s)}$$','$$\angle{L(s)}$$','Location','best');

% Angle closed-loop sensitivity function magnitude
Figure_5 = figure(5);
loglog(f(1001:end),abs(S(1001:end)),'Color',1/255*[39,0,139]);
grid on;
axis([1e-4 1e2 1e-2 1e1]);
xlabel('Hz');
ylabel('N-m/rad');
title('Sensitivity function magnitude');
legend('$$|S(s)|$$','Location','best');

% Angle plant magnitude
Figure_6 = figure(6);
loglog(f(1001:end),abs(P(1001:end)),'Color',1/255*[39,0,139]);
grid on;
axis([1e-4 1e2 1e-7 1e-2]);
xlabel('Hz');
ylabel('rad/N-m');
title('Plant gain magnitude');
legend('$$|P(s)|$$','Location','best');
