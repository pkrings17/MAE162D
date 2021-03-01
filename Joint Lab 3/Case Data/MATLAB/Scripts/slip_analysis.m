set(groot,'defaulttextinterpreter','latex');
set(groot, 'defaultAxesTickLabelInterpreter','latex');
set(groot, 'defaultLegendInterpreter','latex');

%%

load s_slip.mat;
load p_slip.mat;
load c_s_slip.mat;
load c_p_slip.mat;

dT = 0.002;
T1 = 0:dT:5;
T2 = 0:dT:5;

%%

Figure_1 = figure(1);
plot(s_slip(:,1) - s_slip(1,1), -s_slip(:,2) + s_slip(1,2), 'r.', 'MarkerSize', 2); hold on;
plot(-c_s_slip(:,2) + c_s_slip(1,2), c_s_slip(:,1) - c_s_slip(1,1), 'k', 'LineWidth', 1); hold off;
grid on;
axis([ -3.5 0.5, -2, 2]);
axis square;
xlabel('X distance (m)');
ylabel('Y distance (m)');
[h,icons] = legend('Webots path','Analytical path','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway path comparison: slip case');

Figure_2 = figure(2);
plot(T2, unwrap(atan2(s_slip(:,5),-s_slip(:,6))), 'r.', 'MarkerSize', 2); hold on;
plot(T2, c_s_slip(:,3) + pi/2, 'k', 'LineWidth', 1); hold off;
grid on;
xlabel('Time (s)');
ylabel('Angular displacement (rad.)');
[h,icons] = legend('Webots calculated $$\theta$$','Analytical $$\theta$$','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway angle comparison: slip case');

Figure_3 = figure(3);
plot(T2, s_slip(:,7), 'r.', 'MarkerSize', 2); hold on;
plot(T2, c_s_slip(:,4), 'k', 'LineWidth', 1); hold off;
grid on;
xlabel('Time (s)');
ylabel('Angular rate (rad./s)');
[h,icons] = legend('Webots gyro readout','Analytical $$\dot{\theta}$$','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway angular rate comparison: slip case');

Figure_4 = figure(4);
plot(T2, -s_slip(:,6), 'm.', 'MarkerSize', 2); hold on;
plot(T2, s_slip(:,5), 'c.', 'MarkerSize', 2);
plot(T2, sin(-c_s_slip(:,3)), 'r', 'LineWidth', 1);
plot(T2, cos(c_s_slip(:,3)), 'b', 'LineWidth', 1); hold off;
grid on;
xlabel('Time (s)');
[h,icons] = legend('Webots compass X','Webots compass Y','Analytical $$\hat{x}$$','Analytical $$\hat{y}$$','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway compass comparison: slip case');

l_f = 0.25;
w_r = 0.35;
XB = [0 10];
YB = [0 10];
[ d_f, d_r ] = lidar_calc(10 - c_s_slip(:,2), c_s_slip(:,1), c_s_slip(:,3) + pi/2, l_f, w_r, XB, YB);

Figure_5 = figure(5);
plot(T2, s_slip(:,3)*10/4096, 'm.', 'MarkerSize', 2); hold on;
plot(T2, s_slip(:,4)*10/4096, 'c.', 'MarkerSize', 2);
plot(T2, d_f, 'r', 'LineWidth', 1);
plot(T2, d_r, 'b', 'LineWidth', 1); hold off;
grid on;
xlabel('Time(s)');
ylabel('Distance (m)');
[h,icons] = legend('Webots front LIDAR','Webots right LIDAR','Analytical $$d_f$$','Analytical $$d_r$$','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway LIDAR comparison: slip case');

%%

Figure_1 = figure(1);
plot(p_slip(:,1) - p_slip(1,1), -p_slip(:,2) + p_slip(1,2), 'r.', 'MarkerSize', 2); hold on;
plot(-c_p_slip(:,2) + c_p_slip(1,2), c_p_slip(:,1) - c_p_slip(1,1), 'k', 'LineWidth', 1); hold off;
grid on;
axis([ -0.6 0.1, -0.2, 0.5]);
axis square;
xlabel('X distance (m)');
ylabel('Y distance (m)');
[h,icons] = legend('Webots path','Analytical path','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot path comparison: slip case');

Figure_2 = figure(2);
plot(T2, unwrap(atan2(p_slip(:,5),-p_slip(:,6))), 'r.', 'MarkerSize', 2); hold on;
plot(T2, c_p_slip(:,3) + pi/2, 'k', 'LineWidth', 1); hold off;
grid on;
xlabel('Time (s)');
ylabel('Angular displacement (rad.)');
[h,icons] = legend('Webots calculated $$\theta$$','Analytical $$\theta$$','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot angle comparison: slip case');

Figure_3 = figure(3);
plot(T2, p_slip(:,7), 'r.', 'MarkerSize', 2); hold on;
plot(T2, c_p_slip(:,4), 'k', 'LineWidth', 1); hold off;
grid on;
xlabel('Time (s)');
ylabel('Angular rate (rad./s)');
[h,icons] = legend('Webots gyro readout','Analytical $$\dot{\theta}$$','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot angular rate comparison: slip case');

Figure_4 = figure(4);
plot(T2, -p_slip(:,6), 'm.', 'MarkerSize', 2); hold on;
plot(T2, p_slip(:,5), 'c.', 'MarkerSize', 2);
plot(T2, sin(-c_p_slip(:,3)), 'r', 'LineWidth', 1);
plot(T2, cos(c_p_slip(:,3)), 'b', 'LineWidth', 1); hold off;
grid on;
xlabel('Time (s)');
[h,icons] = legend('Webots compass X','Webots compass Y','Analytical $$\hat{x}$$','Analytical $$\hat{y}$$','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot compass comparison: slip case');

l_f = 0.25;
w_r = 0.35;
XB = [0 10];
YB = [0 10];
[ d_f, d_r ] = lidar_calc(10 - c_p_slip(:,2), c_p_slip(:,1), c_p_slip(:,3) + pi/2, l_f, w_r, XB, YB);

Figure_5 = figure(5);
plot(T2, p_slip(:,3)*10/4096, 'm.', 'MarkerSize', 2); hold on;
plot(T2, p_slip(:,4)*10/4096, 'c.', 'MarkerSize', 2);
plot(T2, d_f, 'r', 'LineWidth', 1);
plot(T2, d_r, 'b', 'LineWidth', 1); hold off;
grid on;
xlabel('Time(s)');
ylabel('Distance (m)');
[h,icons] = legend('Webots front LIDAR','Webots right LIDAR','Analytical $$d_f$$','Analytical $$d_r$$','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot LIDAR comparison: slip case');

