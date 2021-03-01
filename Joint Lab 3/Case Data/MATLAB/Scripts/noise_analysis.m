set(groot,'defaulttextinterpreter','latex');
set(groot, 'defaultAxesTickLabelInterpreter','latex');
set(groot, 'defaultLegendInterpreter','latex');

%%

load s_noise_0.mat;
load s_noise_1.mat;
load s_noise_2.mat;
load s_noise_3.mat;
load s_noise_4.mat;
load s_noise_5.mat;
load s_noise_6.mat;

load p_noise_0.mat;
load p_noise_1.mat;
load p_noise_2.mat;
load p_noise_3.mat;
load p_noise_4.mat;
load p_noise_5.mat;
load p_noise_6.mat;

dT = 0.002;
T = 0:dT:20;

%%

Figure_1 = figure(1);
plot(s_noise_0(:,1) - s_noise_0(1,1), -s_noise_0(:,2) + s_noise_0(1,2), 'r.', 'MarkerSize', 2); hold on;
plot(-c_seg_case_2_nb(:,2) + c_seg_case_2_nb(1,2), c_seg_case_2_nb(:,1) - c_seg_case_2_nb(1,1), 'k', 'LineWidth', 1); hold off;
grid on;
axis square;
axis([-1 3 -2.5 1.5]);
xlabel('X distance (m)');
ylabel('Y distance (m)');
[h,icons] = legend('Webots path','Analytical path','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway path comparison: NB case 2');

Figure_2 = figure(2);
plot(T, unwrap(atan2(s_noise_0(:,5),-s_noise_0(:,6))), 'g.', 'MarkerSize', 2); hold on;
plot(T, unwrap(atan2(s_noise_0(:,5),-s_noise_0(:,6))), 'g.', 'MarkerSize', 2); hold on;
% plot(T, c_seg_case_2_nb(:,3) + pi/2, 'k', 'LineWidth', 1); hold off;
grid on;
xlabel('Time (s)');
ylabel('Angular displacement (rad.)');
[h,icons] = legend('Webots calculated $$\theta$$','Analytical $$\theta$$','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway angle comparison: NB case 2');

Figure_3 = figure(3);
plot(T, s_noise_0(:,7), 'g.', 'MarkerSize', 2); hold on;
plot(T, 1.05*s_noise_0(:,7), 'k', 'MarkerSize', 2);
plot(T, 0.95*s_noise_0(:,7), 'k', 'MarkerSize', 2);
% plot(T, c_seg_case_2_nb(:,4), 'k', 'LineWidth', 1); hold off;
grid on;
xlabel('Time (s)');
ylabel('Angular rate (rad./s)');
[h,icons] = legend('Webots gyro readout','Analytical $$\dot{\theta}$$','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway angular rate comparison: NB case 2');

Figure_4 = figure(4);
plot(T, -s_noise_0(:,6), 'm.', 'MarkerSize', 2); hold on;
plot(T, s_noise_0(:,5), 'c.', 'MarkerSize', 2);
% plot(T, sin(-c_seg_case_2_nb(:,3)), 'r', 'LineWidth', 1);
plot(T, cos(c_seg_case_2_nb(:,3)), 'b', 'LineWidth', 1);
plot(T, 0.95*-s_noise_0(:,6), 'r', 'MarkerSize', 2);
plot(T, 0.95*s_noise_0(:,5), 'b', 'MarkerSize', 2);
plot(T, 1.05*-s_noise_0(:,6), 'r', 'MarkerSize', 2);
plot(T, 1.05*s_noise_0(:,5), 'b', 'MarkerSize', 2); hold off;
grid on;
xlabel('Time (s)');
[h,icons] = legend('Webots compass X','Webots compass Y','Analytical $$\hat{x}$$','Analytical $$\hat{y}$$','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway compass comparison: NB case 2');

l_f = 0.25;
w_r = 0.35;
XB = [0 10];
YB = [0 10];
[ d_f, d_r ] = lidar_calc(10 - c_seg_case_2_nb(:,2), c_seg_case_2_nb(:,1), c_seg_case_2_nb(:,3) + pi/2, l_f, w_r, XB, YB);

Figure_5 = figure(5);
plot(T, s_noise_0(:,3)*10/4096, 'm.', 'MarkerSize', 2); hold on;
plot(T, s_noise_0(:,4)*10/4096, 'c.', 'MarkerSize', 2);
plot(T, 0.95*s_noise_0(:,3)*10/4096, 'r.', 'MarkerSize', 2);
plot(T, 0.95*s_noise_0(:,4)*10/4096, 'b.', 'MarkerSize', 2);
plot(T, 1.05*s_noise_0(:,3)*10/4096, 'r.', 'MarkerSize', 2);
plot(T, 1.05*s_noise_0(:,4)*10/4096, 'b.', 'MarkerSize', 2);
plot(T, d_f, 'r', 'LineWidth', 1);
plot(T, d_r, 'b', 'LineWidth', 1); hold off;
grid on;
xlabel('Time (s)');
ylabel('Distance (m)');
[h,icons] = legend('Webots front LIDAR','Webots right LIDAR','Analytical $$d_f$$','Analytical $$d_r$$','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway LIDAR comparison: NB case 2');

%%

Figure_3 = figure(3);
plot(T, s_noise_1(:,7), 'g.', 'MarkerSize', 2); hold on;
plot(T, s_noise_0(:,7), 'k', 'MarkerSize', 2);
plot(T, 1.05*s_noise_0(:,7), 'k', 'MarkerSize', 2);
plot(T, 0.95*s_noise_0(:,7), 'k', 'MarkerSize', 2); hold off;
grid on;
xlabel('Time (s)');
ylabel('Angular rate (rad./s)');
[h,icons] = legend('Webots gyro readout','Noiseless gyro readout','$$\pm$$0.05 bound','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway angular rate comparison: NB case 2');

Figure_4 = figure(4);
plot(T, -s_noise_1(:,6), 'm.', 'MarkerSize', 2); hold on;
plot(T, s_noise_1(:,5), 'c.', 'MarkerSize', 2);
plot(T, -s_noise_0(:,6), 'r', 'MarkerSize', 2);
plot(T, s_noise_0(:,5), 'b', 'MarkerSize', 2);
plot(T, 0.95*-s_noise_0(:,6), 'k', 'MarkerSize', 2);
plot(T, 0.95*s_noise_0(:,5), 'k', 'MarkerSize', 2);
plot(T, 1.05*-s_noise_0(:,6), 'k', 'MarkerSize', 2);
plot(T, 1.05*s_noise_0(:,5), 'k', 'MarkerSize', 2); hold off;
grid on;
xlabel('Time (s)');
[h,icons] = legend('Webots compass X','Webots compass Y','Noiseless compasss X','Noiseless compass Y','$$\pm$$0.05 bound','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway compass comparison: NB case 2');

Figure_5 = figure(5);
plot(T, s_noise_1(:,3)*10/4096, 'm.', 'MarkerSize', 2); hold on;
plot(T, s_noise_1(:,4)*10/4096, 'c.', 'MarkerSize', 2);
plot(T, s_noise_0(:,3)*10/4096, 'r', 'MarkerSize', 2);
plot(T, s_noise_0(:,4)*10/4096, 'b', 'MarkerSize', 2);
plot(T, 0.95*s_noise_0(:,3)*10/4096, 'k', 'MarkerSize', 2);
plot(T, 0.95*s_noise_0(:,4)*10/4096, 'k', 'MarkerSize', 2);
plot(T, 1.05*s_noise_0(:,3)*10/4096, 'k', 'MarkerSize', 2);
plot(T, 1.05*s_noise_0(:,4)*10/4096, 'k', 'MarkerSize', 2); hold off;
grid on;
xlabel('Time (s)');
ylabel('Distance (m)');
[h,icons] = legend('Webots front LIDAR','Webots right LIDAR','Noiseless front LIDAR','Noiseless right LIDAR','$$\pm$$0.05 bound','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway LIDAR comparison: NB case 2');

%%

Figure_3 = figure(3);
plot(T, s_noise_2(:,7), 'g.', 'MarkerSize', 2); hold on;
plot(T, s_noise_0(:,7), 'k', 'MarkerSize', 2);
plot(T, 1.05*s_noise_0(:,7), 'k', 'MarkerSize', 2);
plot(T, 0.95*s_noise_0(:,7), 'k', 'MarkerSize', 2);
grid on;
xlabel('Time (s)');
ylabel('Angular rate (rad./s)');
[h,icons] = legend('Webots gyro readout','Noiseless gyro readout','$$\pm$$0.05 bound','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway angular rate comparison: NB case 2');

Figure_4 = figure(4);
plot(T, -s_noise_2(:,6), 'm.', 'MarkerSize', 2); hold on;
plot(T, s_noise_2(:,5), 'c.', 'MarkerSize', 2);
plot(T, -s_noise_0(:,6), 'r', 'MarkerSize', 2);
plot(T, s_noise_0(:,5), 'b', 'MarkerSize', 2);
plot(T, 0.95*-s_noise_0(:,6), 'k', 'MarkerSize', 2);
plot(T, 0.95*s_noise_0(:,5), 'k', 'MarkerSize', 2);
plot(T, 1.05*-s_noise_0(:,6), 'k', 'MarkerSize', 2);
plot(T, 1.05*s_noise_0(:,5), 'k', 'MarkerSize', 2); hold off;
grid on;
xlabel('Time (s)');
[h,icons] = legend('Webots compass X','Webots compass Y','Noiseless compasss X','Noiseless compass Y','$$\pm$$0.05 bound','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway compass comparison: NB case 2');

Figure_5 = figure(5);
plot(T, s_noise_2(:,3)*10/4096, 'm.', 'MarkerSize', 2); hold on;
plot(T, s_noise_2(:,4)*10/4096, 'c.', 'MarkerSize', 2);
plot(T, s_noise_0(:,3)*10/4096, 'r', 'MarkerSize', 2);
plot(T, s_noise_0(:,4)*10/4096, 'b', 'MarkerSize', 2);
plot(T, 0.95*s_noise_0(:,3)*10/4096, 'k', 'MarkerSize', 2);
plot(T, 0.95*s_noise_0(:,4)*10/4096, 'k', 'MarkerSize', 2);
plot(T, 1.05*s_noise_0(:,3)*10/4096, 'k', 'MarkerSize', 2);
plot(T, 1.05*s_noise_0(:,4)*10/4096, 'k', 'MarkerSize', 2); hold off;
grid on;
xlabel('Time (s)');
ylabel('Distance (m)');
[h,icons] = legend('Webots front LIDAR','Webots right LIDAR','Noiseless front LIDAR','Noiseless right LIDAR','$$\pm$$0.05 bound','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway LIDAR comparison: NB case 2');

%%

Figure_3 = figure(3);
plot(T, s_noise_3(:,7), 'g.', 'MarkerSize', 2); hold on;
plot(T, s_noise_0(:,7), 'k', 'MarkerSize', 2);
plot(T, 1.05*s_noise_0(:,7), 'k', 'MarkerSize', 2);
plot(T, 0.95*s_noise_0(:,7), 'k', 'MarkerSize', 2); hold off;
grid on;
xlabel('Time (s)');
ylabel('Angular rate (rad./s)');
[h,icons] = legend('Webots gyro readout','Noiseless gyro readout','$$\pm$$0.05 bound','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway angular rate comparison: NB case 2');

Figure_4 = figure(4);
plot(T, -s_noise_3(:,6), 'm.', 'MarkerSize', 2); hold on;
plot(T, s_noise_3(:,5), 'c.', 'MarkerSize', 2);
plot(T, -s_noise_0(:,6), 'r', 'MarkerSize', 2);
plot(T, s_noise_0(:,5), 'b', 'MarkerSize', 2);
plot(T, 0.95*-s_noise_0(:,6), 'k', 'MarkerSize', 2);
plot(T, 0.95*s_noise_0(:,5), 'k', 'MarkerSize', 2);
plot(T, 1.05*-s_noise_0(:,6), 'k', 'MarkerSize', 2);
plot(T, 1.05*s_noise_0(:,5), 'k', 'MarkerSize', 2); hold off;
grid on;
xlabel('Time (s)');
[h,icons] = legend('Webots compass X','Webots compass Y','Noiseless compasss X','Noiseless compass Y','$$\pm$$0.05 bound','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway compass comparison: NB case 2');

Figure_5 = figure(5);
plot(T, s_noise_3(:,3)*10/4096, 'm.', 'MarkerSize', 2); hold on;
plot(T, s_noise_3(:,4)*10/4096, 'c.', 'MarkerSize', 2);
plot(T, s_noise_0(:,3)*10/4096, 'r', 'MarkerSize', 2);
plot(T, s_noise_0(:,4)*10/4096, 'b', 'MarkerSize', 2);
plot(T, 0.95*s_noise_0(:,3)*10/4096, 'k', 'MarkerSize', 2);
plot(T, 0.95*s_noise_0(:,4)*10/4096, 'k', 'MarkerSize', 2);
plot(T, 1.05*s_noise_0(:,3)*10/4096, 'k', 'MarkerSize', 2);
plot(T, 1.05*s_noise_0(:,4)*10/4096, 'k', 'MarkerSize', 2); hold off;
grid on;
xlabel('Time (s)');
ylabel('Distance (m)');
[h,icons] = legend('Webots front LIDAR','Webots right LIDAR','Noiseless front LIDAR','Noiseless right LIDAR','$$\pm$$0.05 bound','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway LIDAR comparison: NB case 2');

%%

Figure_3 = figure(3);
plot(T, s_noise_4(:,7), 'g.', 'MarkerSize', 2); hold on;
plot(T, s_noise_0(:,7), 'k', 'MarkerSize', 2);
plot(T, 1.05*s_noise_0(:,7), 'k', 'MarkerSize', 2);
plot(T, 0.95*s_noise_0(:,7), 'k', 'MarkerSize', 2); hold off;
grid on;
xlabel('Time (s)');
ylabel('Angular rate (rad./s)');
[h,icons] = legend('Webots gyro readout','Noiseless gyro readout','$$\pm$$0.05 bound','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway angular rate comparison: NB case 2');

Figure_4 = figure(4);
plot(T, -s_noise_4(:,6), 'm.', 'MarkerSize', 2); hold on;
plot(T, s_noise_4(:,5), 'c.', 'MarkerSize', 2);
plot(T, -s_noise_0(:,6), 'r', 'MarkerSize', 2);
plot(T, s_noise_0(:,5), 'b', 'MarkerSize', 2);
plot(T, 0.95*-s_noise_0(:,6), 'k', 'MarkerSize', 2);
plot(T, 0.95*s_noise_0(:,5), 'k', 'MarkerSize', 2);
plot(T, 1.05*-s_noise_0(:,6), 'k', 'MarkerSize', 2);
plot(T, 1.05*s_noise_0(:,5), 'k', 'MarkerSize', 2); hold off;
grid on;
xlabel('Time (s)');
[h,icons] = legend('Webots compass X','Webots compass Y','Noiseless compasss X','Noiseless compass Y','$$\pm$$0.05 bound','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway compass comparison: NB case 2');

Figure_5 = figure(5);
plot(T, s_noise_4(:,3)*10/4096, 'm.', 'MarkerSize', 2); hold on;
plot(T, s_noise_4(:,4)*10/4096, 'c.', 'MarkerSize', 2);
plot(T, s_noise_0(:,3)*10/4096, 'r', 'MarkerSize', 2);
plot(T, s_noise_0(:,4)*10/4096, 'b', 'MarkerSize', 2);
plot(T, 0.95*s_noise_0(:,3)*10/4096, 'k', 'MarkerSize', 2);
plot(T, 0.95*s_noise_0(:,4)*10/4096, 'k', 'MarkerSize', 2);
plot(T, 1.05*s_noise_0(:,3)*10/4096, 'k', 'MarkerSize', 2);
plot(T, 1.05*s_noise_0(:,4)*10/4096, 'k', 'MarkerSize', 2); hold off;
grid on;
xlabel('Time (s)');
ylabel('Distance (m)');
[h,icons] = legend('Webots front LIDAR','Webots right LIDAR','Noiseless front LIDAR','Noiseless right LIDAR','$$\pm$$0.05 bound','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway LIDAR comparison: NB case 2');

%%

Figure_3 = figure(3);
plot(T, s_noise_5(:,7), 'g.', 'MarkerSize', 2); hold on;
plot(T, s_noise_0(:,7), 'k', 'MarkerSize', 2);
plot(T, 1.05*s_noise_0(:,7), 'k', 'MarkerSize', 2);
plot(T, 0.95*s_noise_0(:,7), 'k', 'MarkerSize', 2); hold off;
grid on;
xlabel('Time (s)');
ylabel('Angular rate (rad./s)');
[h,icons] = legend('Webots gyro readout','Noiseless gyro readout','$$\pm$$0.05 bound','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway angular rate comparison: NB case 2');

Figure_4 = figure(4);
plot(T, -s_noise_5(:,6), 'm.', 'MarkerSize', 2); hold on;
plot(T, s_noise_5(:,5), 'c.', 'MarkerSize', 2);
plot(T, -s_noise_0(:,6), 'r', 'MarkerSize', 2);
plot(T, s_noise_0(:,5), 'b', 'MarkerSize', 2);
plot(T, 0.95*-s_noise_0(:,6), 'k', 'MarkerSize', 2);
plot(T, 0.95*s_noise_0(:,5), 'k', 'MarkerSize', 2);
plot(T, 1.05*-s_noise_0(:,6), 'k', 'MarkerSize', 2);
plot(T, 1.05*s_noise_0(:,5), 'k', 'MarkerSize', 2); hold off;
grid on;
xlabel('Time (s)');
[h,icons] = legend('Webots compass X','Webots compass Y','Noiseless compasss X','Noiseless compass Y','$$\pm$$0.05 bound','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway compass comparison: NB case 2');

Figure_5 = figure(5);
plot(T, s_noise_5(:,3)*10/4096, 'm.', 'MarkerSize', 2); hold on;
plot(T, s_noise_5(:,4)*10/4096, 'c.', 'MarkerSize', 2);
plot(T, s_noise_0(:,3)*10/4096, 'r', 'MarkerSize', 2);
plot(T, s_noise_0(:,4)*10/4096, 'b', 'MarkerSize', 2);
plot(T, 0.95*s_noise_0(:,3)*10/4096, 'k', 'MarkerSize', 2);
plot(T, 0.95*s_noise_0(:,4)*10/4096, 'k', 'MarkerSize', 2);
plot(T, 1.05*s_noise_0(:,3)*10/4096, 'k', 'MarkerSize', 2);
plot(T, 1.05*s_noise_0(:,4)*10/4096, 'k', 'MarkerSize', 2); hold off;
grid on;
xlabel('Time (s)');
ylabel('Distance (m)');
[h,icons] = legend('Webots front LIDAR','Webots right LIDAR','Noiseless front LIDAR','Noiseless right LIDAR','$$\pm$$0.05 bound','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway LIDAR comparison: NB case 2');

%%

Figure_3 = figure(3);
plot(T, s_noise_6(:,7), 'g.', 'MarkerSize', 2); hold on;
plot(T, s_noise_0(:,7), 'k', 'MarkerSize', 2);
plot(T, 1.05*s_noise_0(:,7), 'k', 'MarkerSize', 2);
plot(T, 0.95*s_noise_0(:,7), 'k', 'MarkerSize', 2); hold off;
grid on;
xlabel('Time (s)');
ylabel('Angular rate (rad./s)');
[h,icons] = legend('Webots gyro readout','Noiseless gyro readout','$$\pm$$0.05 bound','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway angular rate comparison: NB case 2');

Figure_4 = figure(4);
plot(T, -s_noise_6(:,6), 'm.', 'MarkerSize', 2); hold on;
plot(T, s_noise_6(:,5), 'c.', 'MarkerSize', 2);
plot(T, -s_noise_0(:,6), 'r', 'MarkerSize', 2);
plot(T, s_noise_0(:,5), 'b', 'MarkerSize', 2);
plot(T, 0.95*-s_noise_0(:,6), 'k', 'MarkerSize', 2);
plot(T, 0.95*s_noise_0(:,5), 'k', 'MarkerSize', 2);
plot(T, 1.05*-s_noise_0(:,6), 'k', 'MarkerSize', 2);
plot(T, 1.05*s_noise_0(:,5), 'k', 'MarkerSize', 2); hold off;
grid on;
xlabel('Time (s)');
[h,icons] = legend('Webots compass X','Webots compass Y','Noiseless compasss X','Noiseless compass Y','$$\pm$$0.05 bound','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway compass comparison: NB case 2');

Figure_5 = figure(5);
plot(T, s_noise_6(:,3)*10/4096, 'm.', 'MarkerSize', 2); hold on;
plot(T, s_noise_6(:,4)*10/4096, 'c.', 'MarkerSize', 2);
plot(T, s_noise_0(:,3)*10/4096, 'r', 'MarkerSize', 2);
plot(T, s_noise_0(:,4)*10/4096, 'b', 'MarkerSize', 2);
plot(T, 0.95*s_noise_0(:,3)*10/4096, 'k', 'MarkerSize', 2);
plot(T, 0.95*s_noise_0(:,4)*10/4096, 'k', 'MarkerSize', 2);
plot(T, 1.05*s_noise_0(:,3)*10/4096, 'k', 'MarkerSize', 2);
plot(T, 1.05*s_noise_0(:,4)*10/4096, 'k', 'MarkerSize', 2); hold off;
grid on;
xlabel('Time (s)');
ylabel('Distance (m)');
[h,icons] = legend('Webots front LIDAR','Webots right LIDAR','Noiseless front LIDAR','Noiseless right LIDAR','$$\pm$$0.05 bound','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway LIDAR comparison: NB case 2');

%%

Figure_1 = figure(1);
plot(p_noise_0(:,1) - p_noise_0(1,1), -p_noise_0(:,2) + p_noise_0(1,2), 'r.', 'MarkerSize', 2); hold on;
plot(-c_seg_case_2_nb(:,2) + c_seg_case_2_nb(1,2), c_seg_case_2_nb(:,1) - c_seg_case_2_nb(1,1), 'k', 'LineWidth', 1); hold off;
grid on;
axis square;
axis([-1 3 -2.5 1.5]);
xlabel('X distance (m)');
ylabel('Y distance (m)');
[h,icons] = legend('Webots path','Analytical path','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot path comparison: NB case 2');

Figure_2 = figure(2);
plot(T, unwrap(atan2(p_noise_0(:,5),-p_noise_0(:,6))), 'g.', 'MarkerSize', 2); hold on;
plot(T, unwrap(atan2(p_noise_0(:,5),-p_noise_0(:,6))), 'g.', 'MarkerSize', 2); hold on;
% plot(T, c_seg_case_2_nb(:,3) + pi/2, 'k', 'LineWidth', 1); hold off;
grid on;
xlabel('Time (s)');
ylabel('Angular displacement (rad.)');
[h,icons] = legend('Webots calculated $$\theta$$','Analytical $$\theta$$','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot angle comparison: NB case 2');

Figure_3 = figure(3);
plot(T, p_noise_0(:,7), 'g.', 'MarkerSize', 2); hold on;
plot(T, 1.05*p_noise_0(:,7), 'k', 'MarkerSize', 2);
plot(T, 0.95*p_noise_0(:,7), 'k', 'MarkerSize', 2);
grid on;
xlabel('Time (s)');
ylabel('Angular rate (rad./s)');
[h,icons] = legend('Webots gyro readout','Analytical $$\dot{\theta}$$','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot angular rate comparison: NB case 2');

Figure_4 = figure(4);
plot(T, -p_noise_0(:,6), 'm.', 'MarkerSize', 2); hold on;
plot(T, p_noise_0(:,5), 'c.', 'MarkerSize', 2);
plot(T, cos(c_seg_case_2_nb(:,3)), 'b', 'LineWidth', 1);
plot(T, 0.95*-p_noise_0(:,6), 'r', 'MarkerSize', 2);
plot(T, 0.95*p_noise_0(:,5), 'b', 'MarkerSize', 2);
plot(T, 1.05*-p_noise_0(:,6), 'r', 'MarkerSize', 2);
plot(T, 1.05*p_noise_0(:,5), 'b', 'MarkerSize', 2); hold off;
grid on;
xlabel('Time (s)');
[h,icons] = legend('Webots compass X','Webots compass Y','Analytical $$\hat{x}$$','Analytical $$\hat{y}$$','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot compass comparison: NB case 2');

l_f = 0.25;
w_r = 0.35;
XB = [0 10];
YB = [0 10];
[ d_f, d_r ] = lidar_calc(10 - c_seg_case_2_nb(:,2), c_seg_case_2_nb(:,1), c_seg_case_2_nb(:,3) + pi/2, l_f, w_r, XB, YB);

Figure_5 = figure(5);
plot(T, p_noise_0(:,3)*10/4096, 'm.', 'MarkerSize', 2); hold on;
plot(T, p_noise_0(:,4)*10/4096, 'c.', 'MarkerSize', 2);
plot(T, 0.95*p_noise_0(:,3)*10/4096, 'r.', 'MarkerSize', 2);
plot(T, 0.95*p_noise_0(:,4)*10/4096, 'b.', 'MarkerSize', 2);
plot(T, 1.05*p_noise_0(:,3)*10/4096, 'r.', 'MarkerSize', 2);
plot(T, 1.05*p_noise_0(:,4)*10/4096, 'b.', 'MarkerSize', 2);
plot(T, d_f, 'r', 'LineWidth', 1);
plot(T, d_r, 'b', 'LineWidth', 1); hold off;
grid on;
xlabel('Time (s)');
ylabel('Distance (m)');
[h,icons] = legend('Webots front LIDAR','Webots right LIDAR','Analytical $$d_f$$','Analytical $$d_r$$','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot LIDAR comparison: NB case 2');

%%

Figure_3 = figure(3);
plot(T, p_noise_1(:,7), 'g.', 'MarkerSize', 2); hold on;
plot(T, p_noise_0(:,7), 'k', 'MarkerSize', 2);
plot(T, 1.05*p_noise_0(:,7), 'k', 'MarkerSize', 2);
plot(T, 0.95*p_noise_0(:,7), 'k', 'MarkerSize', 2); hold off;
grid on;
xlabel('Time (s)');
ylabel('Angular rate (rad./s)');
[h,icons] = legend('Webots gyro readout','Noiseless gyro readout','$$\pm$$0.05 bound','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot angular rate comparison: NB case 2');

Figure_4 = figure(4);
plot(T, -p_noise_1(:,6), 'm.', 'MarkerSize', 2); hold on;
plot(T, p_noise_1(:,5), 'c.', 'MarkerSize', 2);
plot(T, -p_noise_0(:,6), 'r', 'MarkerSize', 2);
plot(T, p_noise_0(:,5), 'b', 'MarkerSize', 2);
plot(T, 0.95*-p_noise_0(:,6), 'k', 'MarkerSize', 2);
plot(T, 0.95*p_noise_0(:,5), 'k', 'MarkerSize', 2);
plot(T, 1.05*-p_noise_0(:,6), 'k', 'MarkerSize', 2);
plot(T, 1.05*p_noise_0(:,5), 'k', 'MarkerSize', 2); hold off;
grid on;
xlabel('Time (s)');
[h,icons] = legend('Webots compass X','Webots compass Y','Noiseless compasss X','Noiseless compass Y','$$\pm$$0.05 bound','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot compass comparison: NB case 2');

Figure_5 = figure(5);
plot(T, p_noise_1(:,3)*10/4096, 'm.', 'MarkerSize', 2); hold on;
plot(T, p_noise_1(:,4)*10/4096, 'c.', 'MarkerSize', 2);
plot(T, p_noise_0(:,3)*10/4096, 'r', 'MarkerSize', 2);
plot(T, p_noise_0(:,4)*10/4096, 'b', 'MarkerSize', 2);
plot(T, 0.95*p_noise_0(:,3)*10/4096, 'k', 'MarkerSize', 2);
plot(T, 0.95*p_noise_0(:,4)*10/4096, 'k', 'MarkerSize', 2);
plot(T, 1.05*p_noise_0(:,3)*10/4096, 'k', 'MarkerSize', 2);
plot(T, 1.05*p_noise_0(:,4)*10/4096, 'k', 'MarkerSize', 2); hold off;
grid on;
xlabel('Time (s)');
ylabel('Distance (m)');
[h,icons] = legend('Webots front LIDAR','Webots right LIDAR','Noiseless front LIDAR','Noiseless right LIDAR','$$\pm$$0.05 bound','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot LIDAR comparison: NB case 2');

%%

Figure_3 = figure(3);
plot(T, p_noise_2(:,7), 'g.', 'MarkerSize', 2); hold on;
plot(T, p_noise_0(:,7), 'k', 'MarkerSize', 2);
plot(T, 1.05*p_noise_0(:,7), 'k', 'MarkerSize', 2);
plot(T, 0.95*p_noise_0(:,7), 'k', 'MarkerSize', 2);
grid on;
xlabel('Time (s)');
ylabel('Angular rate (rad./s)');
[h,icons] = legend('Webots gyro readout','Noiseless gyro readout','$$\pm$$0.05 bound','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot angular rate comparison: NB case 2');

Figure_4 = figure(4);
plot(T, -p_noise_2(:,6), 'm.', 'MarkerSize', 2); hold on;
plot(T, p_noise_2(:,5), 'c.', 'MarkerSize', 2);
plot(T, -p_noise_0(:,6), 'r', 'MarkerSize', 2);
plot(T, p_noise_0(:,5), 'b', 'MarkerSize', 2);
plot(T, 0.95*-p_noise_0(:,6), 'k', 'MarkerSize', 2);
plot(T, 0.95*p_noise_0(:,5), 'k', 'MarkerSize', 2);
plot(T, 1.05*-p_noise_0(:,6), 'k', 'MarkerSize', 2);
plot(T, 1.05*p_noise_0(:,5), 'k', 'MarkerSize', 2); hold off;
grid on;
xlabel('Time (s)');
[h,icons] = legend('Webots compass X','Webots compass Y','Noiseless compasss X','Noiseless compass Y','$$\pm$$0.05 bound','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot compass comparison: NB case 2');

Figure_5 = figure(5);
plot(T, p_noise_2(:,3)*10/4096, 'm.', 'MarkerSize', 2); hold on;
plot(T, p_noise_2(:,4)*10/4096, 'c.', 'MarkerSize', 2);
plot(T, p_noise_0(:,3)*10/4096, 'r', 'MarkerSize', 2);
plot(T, p_noise_0(:,4)*10/4096, 'b', 'MarkerSize', 2);
plot(T, 0.95*p_noise_0(:,3)*10/4096, 'k', 'MarkerSize', 2);
plot(T, 0.95*p_noise_0(:,4)*10/4096, 'k', 'MarkerSize', 2);
plot(T, 1.05*p_noise_0(:,3)*10/4096, 'k', 'MarkerSize', 2);
plot(T, 1.05*p_noise_0(:,4)*10/4096, 'k', 'MarkerSize', 2); hold off;
grid on;
xlabel('Time (s)');
ylabel('Distance (m)');
[h,icons] = legend('Webots front LIDAR','Webots right LIDAR','Noiseless front LIDAR','Noiseless right LIDAR','$$\pm$$0.05 bound','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot LIDAR comparison: NB case 2');

%%

Figure_3 = figure(3);
plot(T, p_noise_3(:,7), 'g.', 'MarkerSize', 2); hold on;
plot(T, p_noise_0(:,7), 'k', 'MarkerSize', 2);
plot(T, 1.05*p_noise_0(:,7), 'k', 'MarkerSize', 2);
plot(T, 0.95*p_noise_0(:,7), 'k', 'MarkerSize', 2); hold off;
grid on;
xlabel('Time (s)');
ylabel('Angular rate (rad./s)');
[h,icons] = legend('Webots gyro readout','Noiseless gyro readout','$$\pm$$0.05 bound','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot angular rate comparison: NB case 2');

Figure_4 = figure(4);
plot(T, -p_noise_3(:,6), 'm.', 'MarkerSize', 2); hold on;
plot(T, p_noise_3(:,5), 'c.', 'MarkerSize', 2);
plot(T, -p_noise_0(:,6), 'r', 'MarkerSize', 2);
plot(T, p_noise_0(:,5), 'b', 'MarkerSize', 2);
plot(T, 0.95*-p_noise_0(:,6), 'k', 'MarkerSize', 2);
plot(T, 0.95*p_noise_0(:,5), 'k', 'MarkerSize', 2);
plot(T, 1.05*-p_noise_0(:,6), 'k', 'MarkerSize', 2);
plot(T, 1.05*p_noise_0(:,5), 'k', 'MarkerSize', 2); hold off;
grid on;
xlabel('Time (s)');
[h,icons] = legend('Webots compass X','Webots compass Y','Noiseless compasss X','Noiseless compass Y','$$\pm$$0.05 bound','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot compass comparison: NB case 2');

Figure_5 = figure(5);
plot(T, p_noise_3(:,3)*10/4096, 'm.', 'MarkerSize', 2); hold on;
plot(T, p_noise_3(:,4)*10/4096, 'c.', 'MarkerSize', 2);
plot(T, p_noise_0(:,3)*10/4096, 'r', 'MarkerSize', 2);
plot(T, p_noise_0(:,4)*10/4096, 'b', 'MarkerSize', 2);
plot(T, 0.95*p_noise_0(:,3)*10/4096, 'k', 'MarkerSize', 2);
plot(T, 0.95*p_noise_0(:,4)*10/4096, 'k', 'MarkerSize', 2);
plot(T, 1.05*p_noise_0(:,3)*10/4096, 'k', 'MarkerSize', 2);
plot(T, 1.05*p_noise_0(:,4)*10/4096, 'k', 'MarkerSize', 2); hold off;
grid on;
xlabel('Time (s)');
ylabel('Distance (m)');
[h,icons] = legend('Webots front LIDAR','Webots right LIDAR','Noiseless front LIDAR','Noiseless right LIDAR','$$\pm$$0.05 bound','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot LIDAR comparison: NB case 2');

%%

Figure_3 = figure(3);
plot(T, p_noise_4(:,7), 'g.', 'MarkerSize', 2); hold on;
plot(T, p_noise_0(:,7), 'k', 'MarkerSize', 2);
plot(T, 1.05*p_noise_0(:,7), 'k', 'MarkerSize', 2);
plot(T, 0.95*p_noise_0(:,7), 'k', 'MarkerSize', 2); hold off;
grid on;
xlabel('Time (s)');
ylabel('Angular rate (rad./s)');
[h,icons] = legend('Webots gyro readout','Noiseless gyro readout','$$\pm$$0.05 bound','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot angular rate comparison: NB case 2');

Figure_4 = figure(4);
plot(T, -p_noise_4(:,6), 'm.', 'MarkerSize', 2); hold on;
plot(T, p_noise_4(:,5), 'c.', 'MarkerSize', 2);
plot(T, -p_noise_0(:,6), 'r', 'MarkerSize', 2);
plot(T, p_noise_0(:,5), 'b', 'MarkerSize', 2);
plot(T, 0.95*-p_noise_0(:,6), 'k', 'MarkerSize', 2);
plot(T, 0.95*p_noise_0(:,5), 'k', 'MarkerSize', 2);
plot(T, 1.05*-p_noise_0(:,6), 'k', 'MarkerSize', 2);
plot(T, 1.05*p_noise_0(:,5), 'k', 'MarkerSize', 2); hold off;
grid on;
xlabel('Time (s)');
[h,icons] = legend('Webots compass X','Webots compass Y','Noiseless compasss X','Noiseless compass Y','$$\pm$$0.05 bound','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot compass comparison: NB case 2');

Figure_5 = figure(5);
plot(T, p_noise_4(:,3)*10/4096, 'm.', 'MarkerSize', 2); hold on;
plot(T, p_noise_4(:,4)*10/4096, 'c.', 'MarkerSize', 2);
plot(T, p_noise_0(:,3)*10/4096, 'r', 'MarkerSize', 2);
plot(T, p_noise_0(:,4)*10/4096, 'b', 'MarkerSize', 2);
plot(T, 0.95*p_noise_0(:,3)*10/4096, 'k', 'MarkerSize', 2);
plot(T, 0.95*p_noise_0(:,4)*10/4096, 'k', 'MarkerSize', 2);
plot(T, 1.05*p_noise_0(:,3)*10/4096, 'k', 'MarkerSize', 2);
plot(T, 1.05*p_noise_0(:,4)*10/4096, 'k', 'MarkerSize', 2); hold off;
grid on;
xlabel('Time (s)');
ylabel('Distance (m)');
[h,icons] = legend('Webots front LIDAR','Webots right LIDAR','Noiseless front LIDAR','Noiseless right LIDAR','$$\pm$$0.05 bound','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot LIDAR comparison: NB case 2');

%%

Figure_3 = figure(3);
plot(T, p_noise_5(:,7), 'g.', 'MarkerSize', 2); hold on;
plot(T, p_noise_0(:,7), 'k', 'MarkerSize', 2);
plot(T, 1.05*p_noise_0(:,7), 'k', 'MarkerSize', 2);
plot(T, 0.95*p_noise_0(:,7), 'k', 'MarkerSize', 2); hold off;
grid on;
xlabel('Time (s)');
ylabel('Angular rate (rad./s)');
[h,icons] = legend('Webots gyro readout','Noiseless gyro readout','$$\pm$$0.05 bound','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot angular rate comparison: NB case 2');

Figure_4 = figure(4);
plot(T, -p_noise_5(:,6), 'm.', 'MarkerSize', 2); hold on;
plot(T, p_noise_5(:,5), 'c.', 'MarkerSize', 2);
plot(T, -p_noise_0(:,6), 'r', 'MarkerSize', 2);
plot(T, p_noise_0(:,5), 'b', 'MarkerSize', 2);
plot(T, 0.95*-p_noise_0(:,6), 'k', 'MarkerSize', 2);
plot(T, 0.95*p_noise_0(:,5), 'k', 'MarkerSize', 2);
plot(T, 1.05*-p_noise_0(:,6), 'k', 'MarkerSize', 2);
plot(T, 1.05*p_noise_0(:,5), 'k', 'MarkerSize', 2); hold off;
grid on;
xlabel('Time (s)');
[h,icons] = legend('Webots compass X','Webots compass Y','Noiseless compasss X','Noiseless compass Y','$$\pm$$0.05 bound','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot compass comparison: NB case 2');

Figure_5 = figure(5);
plot(T, p_noise_5(:,3)*10/4096, 'm.', 'MarkerSize', 2); hold on;
plot(T, p_noise_5(:,4)*10/4096, 'c.', 'MarkerSize', 2);
plot(T, p_noise_0(:,3)*10/4096, 'r', 'MarkerSize', 2);
plot(T, p_noise_0(:,4)*10/4096, 'b', 'MarkerSize', 2);
plot(T, 0.95*p_noise_0(:,3)*10/4096, 'k', 'MarkerSize', 2);
plot(T, 0.95*p_noise_0(:,4)*10/4096, 'k', 'MarkerSize', 2);
plot(T, 1.05*p_noise_0(:,3)*10/4096, 'k', 'MarkerSize', 2);
plot(T, 1.05*p_noise_0(:,4)*10/4096, 'k', 'MarkerSize', 2); hold off;
grid on;
xlabel('Time (s)');
ylabel('Distance (m)');
[h,icons] = legend('Webots front LIDAR','Webots right LIDAR','Noiseless front LIDAR','Noiseless right LIDAR','$$\pm$$0.05 bound','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot LIDAR comparison: NB case 2');

%%

Figure_3 = figure(3);
plot(T, p_noise_6(:,7), 'g.', 'MarkerSize', 2); hold on;
plot(T, p_noise_0(:,7), 'k', 'MarkerSize', 2);
plot(T, 1.05*p_noise_0(:,7), 'k', 'MarkerSize', 2);
plot(T, 0.95*p_noise_0(:,7), 'k', 'MarkerSize', 2); hold off;
grid on;
xlabel('Time (s)');
ylabel('Angular rate (rad./s)');
[h,icons] = legend('Webots gyro readout','Noiseless gyro readout','$$\pm$$0.05 bound','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot angular rate comparison: NB case 2');

Figure_4 = figure(4);
plot(T, -p_noise_6(:,6), 'm.', 'MarkerSize', 2); hold on;
plot(T, p_noise_6(:,5), 'c.', 'MarkerSize', 2);
plot(T, -p_noise_0(:,6), 'r', 'MarkerSize', 2);
plot(T, p_noise_0(:,5), 'b', 'MarkerSize', 2);
plot(T, 0.95*-p_noise_0(:,6), 'k', 'MarkerSize', 2);
plot(T, 0.95*p_noise_0(:,5), 'k', 'MarkerSize', 2);
plot(T, 1.05*-p_noise_0(:,6), 'k', 'MarkerSize', 2);
plot(T, 1.05*p_noise_0(:,5), 'k', 'MarkerSize', 2); hold off;
grid on;
xlabel('Time (s)');
[h,icons] = legend('Webots compass X','Webots compass Y','Noiseless compasss X','Noiseless compass Y','$$\pm$$0.05 bound','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot compass comparison: NB case 2');

Figure_5 = figure(5);
plot(T, p_noise_6(:,3)*10/4096, 'm.', 'MarkerSize', 2); hold on;
plot(T, p_noise_6(:,4)*10/4096, 'c.', 'MarkerSize', 2);
plot(T, p_noise_0(:,3)*10/4096, 'r', 'MarkerSize', 2);
plot(T, p_noise_0(:,4)*10/4096, 'b', 'MarkerSize', 2);
plot(T, 0.95*p_noise_0(:,3)*10/4096, 'k', 'MarkerSize', 2);
plot(T, 0.95*p_noise_0(:,4)*10/4096, 'k', 'MarkerSize', 2);
plot(T, 1.05*p_noise_0(:,3)*10/4096, 'k', 'MarkerSize', 2);
plot(T, 1.05*p_noise_0(:,4)*10/4096, 'k', 'MarkerSize', 2); hold off;
grid on;
xlabel('Time (s)');
ylabel('Distance (m)');
[h,icons] = legend('Webots front LIDAR','Webots right LIDAR','Noiseless front LIDAR','Noiseless right LIDAR','$$\pm$$0.05 bound','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot LIDAR comparison: NB case 2');
