set(groot,'defaulttextinterpreter','latex');
set(groot, 'defaultAxesTickLabelInterpreter','latex');
set(groot, 'defaultLegendInterpreter','latex');

%%

load in_s_c1_pk.mat;
load in_s_c2_pk.mat;
load in_s_c3_pk.mat;
load in_s_c1_nb.mat;
load in_s_c2_nb.mat;
load in_s_c3_nb.mat;
load in_s_c1_zl.mat;
load in_s_c2_zl.mat;
load in_s_c3_zl.mat;
load in_s_c1_nc.mat;
load in_s_c2_nc.mat;
load in_s_c3_nc.mat;
load in_s_c1_tk.mat;
load in_s_c2_tk.mat;
load in_s_c3_tk.mat;

load seg_case_1_pk.mat;
load seg_case_2_pk.mat;
load seg_case_3_pk.mat;
load seg_case_1_nb.mat;
load seg_case_2_nb.mat;
load seg_case_3_nb.mat;
load seg_case_1_zl.mat;
load seg_case_2_zl.mat;
load seg_case_3_zl.mat;
load seg_case_1_nc.mat;
load seg_case_2_nc.mat;
load seg_case_3_nc.mat;
load seg_case_1_tk.mat;
load seg_case_2_tk.mat;
load seg_case_3_tk.mat;

load p_case_1_pk.mat;
load p_case_2_pk.mat;
load p_case_3_pk.mat;
load p_case_1_nb.mat;
load p_case_2_nb.mat;
load p_case_3_nb.mat;
load p_case_1_zl.mat;
load p_case_2_zl.mat;
load p_case_3_zl.mat;
load p_case_1_nc.mat;
load p_case_2_nc.mat;
load p_case_3_nc.mat;
load p_case_1_tk.mat;
load p_case_2_tk.mat;
load p_case_3_tk.mat;

load c_seg_case_1_pk.mat;
load c_seg_case_2_pk.mat;
load c_seg_case_3_pk.mat;
load c_seg_case_1_nb.mat;
load c_seg_case_2_nb.mat;
load c_seg_case_3_nb.mat;
load c_seg_case_1_zl.mat;
load c_seg_case_2_zl.mat;
load c_seg_case_3_zl.mat;
load c_seg_case_1_nc.mat;
load c_seg_case_2_nc.mat;
load c_seg_case_3_nc.mat;
load c_seg_case_1_tk.mat;
load c_seg_case_2_tk.mat;
load c_seg_case_3_tk.mat;

load c_p_case_1_pk.mat;
load c_p_case_2_pk.mat;
load c_p_case_3_pk.mat;
load c_p_case_1_nb.mat;
load c_p_case_2_nb.mat;
load c_p_case_3_nb.mat;
load c_p_case_1_zl.mat;
load c_p_case_2_zl.mat;
load c_p_case_3_zl.mat;
load c_p_case_1_nc.mat;
load c_p_case_2_nc.mat;
load c_p_case_3_nc.mat;
load c_p_case_1_tk.mat;
load c_p_case_2_tk.mat;
load c_p_case_3_tk.mat;

dT = 0.002;
T = 0:0.002:20;

%% Inputs
Figure_1 = figure(1);
plot(in_s_c1_pk(:,1), in_s_c1_pk(:,2), 'r', 'LineWidth', 1); hold on;
plot(in_s_c1_pk(:,1), in_s_c1_pk(:,3), 'b', 'LineWidth', 1); hold off;
grid on;
ylim([0 2]);
xlabel('Time (s)');
ylabel('Angular rate (rad./s)');
[h,icons] = legend('Left wheel speed','Right wheel speed','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Speed inputs: PK case 1');

Figure_2 = figure(2);
plot(in_s_c2_pk(:,1), in_s_c2_pk(:,2), 'r', 'LineWidth', 1); hold on;
plot(in_s_c2_pk(:,1), in_s_c2_pk(:,3), 'b', 'LineWidth', 1); hold off;
grid on;
ylim([-1.5 1.5]);
xlabel('Time (s)');
ylabel('Angular rate (rad./s)');
[h,icons] = legend('Left wheel speed','Right wheel speed','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Speed inputs: PK case 2');

Figure_3 = figure(3);
plot(in_s_c3_pk(:,1), in_s_c3_pk(:,2), 'r', 'LineWidth', 1); hold on;
plot(in_s_c3_pk(:,1), in_s_c3_pk(:,3), 'b', 'LineWidth', 1); hold off;
grid on;
ylim([-2 0.5]);
xlabel('Time (s)');
ylabel('Angular rate (rad./s)');
[h,icons] = legend('Left wheel speed','Right wheel speed','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Speed inputs: PK case 3');

Figure_4 = figure(4);
plot(in_s_c1_nb(:,1), in_s_c1_nb(:,2), 'r', 'LineWidth', 1); hold on;
plot(in_s_c1_nb(:,1), in_s_c1_nb(:,3), 'b', 'LineWidth', 1); hold off;
grid on;
ylim([-3.5 0]);
xlabel('Time (s)');
ylabel('Angular rate (rad./s)');
[h,icons] = legend('Left wheel speed','Right wheel speed','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Speed inputs: NB case 1');

Figure_5 = figure(5);
plot(in_s_c2_nb(:,1), in_s_c2_nb(:,2), 'r', 'LineWidth', 1); hold on;
plot(in_s_c2_nb(:,1), in_s_c2_nb(:,3), 'b', 'LineWidth', 1); hold off;
grid on;
ylim([-1.5 1.5]);
xlabel('Time (s)');
ylabel('Angular rate (rad./s)');
[h,icons] = legend('Left wheel speed','Right wheel speed','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Speed inputs: NB case 2');

Figure_6 = figure(6);
plot(in_s_c3_nb(:,1), in_s_c3_nb(:,2), 'r', 'LineWidth', 1); hold on;
plot(in_s_c3_nb(:,1), in_s_c3_nb(:,3), 'b', 'LineWidth', 1); hold off;
grid on;
ylim([0 1.5]);
xlabel('Time (s)');
ylabel('Angular rate (rad./s)');
[h,icons] = legend('Left wheel speed','Right wheel speed','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Speed inputs: NB case 3');

Figure_7 = figure(7);
plot(in_s_c1_zl(:,1), in_s_c1_zl(:,2), 'r', 'LineWidth', 1); hold on;
plot(in_s_c1_zl(:,1), in_s_c1_zl(:,3), 'b', 'LineWidth', 1); hold off;
grid on;
ylim([-2 2.5]);
xlabel('Time (s)');
ylabel('Angular rate (rad./s)');
[h,icons] = legend('Left wheel speed','Right wheel speed','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Speed inputs: ZL case 1');

Figure_8 = figure(8);
plot(in_s_c2_zl(:,1), in_s_c2_zl(:,2), 'r', 'LineWidth', 1); hold on;
plot(in_s_c2_zl(:,1), in_s_c2_zl(:,3), 'b', 'LineWidth', 1); hold off;
grid on;
ylim([-2 1]);
xlabel('Time (s)');
ylabel('Angular rate (rad./s)');
[h,icons] = legend('Left wheel speed','Right wheel speed','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Speed inputs: ZL case 2');

Figure_9 = figure(9);
plot(in_s_c3_zl(:,1), in_s_c3_zl(:,2), 'r', 'LineWidth', 1); hold on;
plot(in_s_c3_zl(:,1), in_s_c3_zl(:,3), 'b', 'LineWidth', 1); hold off;
grid on;
ylim([-2.5 1.5]);
xlabel('Time (s)');
ylabel('Angular rate (rad./s)');
[h,icons] = legend('Left wheel speed','Right wheel speed','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Speed inputs: ZL case 3');

Figure_10 = figure(10);
plot(in_s_c1_nc(:,1), in_s_c1_nc(:,2), 'r', 'LineWidth', 1); hold on;
plot(in_s_c1_nc(:,1), in_s_c1_nc(:,3), 'b', 'LineWidth', 1); hold off;
grid on;
ylim([0 1.5]);
xlabel('Time (s)');
ylabel('Angular rate (rad./s)');
[h,icons] = legend('Left wheel speed','Right wheel speed','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Speed inputs: NC case 1');

Figure_11 = figure(11);
plot(in_s_c2_nc(:,1), in_s_c2_nc(:,2), 'r', 'LineWidth', 1); hold on;
plot(in_s_c2_nc(:,1), in_s_c2_nc(:,3), 'b', 'LineWidth', 1); hold off;
grid on;
ylim([-2.5 2.5]);
xlabel('Time (s)');
ylabel('Angular rate (rad./s)');
[h,icons] = legend('Left wheel speed','Right wheel speed','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Speed inputs: NC case 2');

Figure_12 = figure(12);
plot(in_s_c3_nc(:,1), in_s_c3_nc(:,2), 'r', 'LineWidth', 1); hold on;
plot(in_s_c3_nc(:,1), in_s_c3_nc(:,3), 'b', 'LineWidth', 1); hold off;
grid on;
ylim([-1.2 1.2]);
xlabel('Time (s)');
ylabel('Angular rate (rad./s)');
[h,icons] = legend('Left wheel speed','Right wheel speed','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Speed inputs: NC case 3');

Figure_13 = figure(13);
plot(in_s_c1_tk(:,1), in_s_c1_tk(:,2), 'r', 'LineWidth', 1); hold on;
plot(in_s_c1_tk(:,1), in_s_c1_tk(:,3), 'b', 'LineWidth', 1); hold off;
grid on;
ylim([0 2.5]);
xlabel('Time (s)');
ylabel('Angular rate (rad./s)');
[h,icons] = legend('Left wheel speed','Right wheel speed','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Speed inputs: TK case 1');

Figure_14 = figure(14);
plot(in_s_c2_tk(:,1), in_s_c2_tk(:,2), 'r', 'LineWidth', 1); hold on;
plot(in_s_c2_tk(:,1), in_s_c2_tk(:,3), 'b', 'LineWidth', 1); hold off;
grid on;
ylim([-1 2]);
xlabel('Time (s)');
ylabel('Angular rate (rad./s)');
[h,icons] = legend('Left wheel speed','Right wheel speed','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Speed inputs: TK case 2');

Figure_15 = figure(15);
plot(in_s_c3_tk(:,1), in_s_c3_tk(:,2), 'r', 'LineWidth', 1); hold on;
plot(in_s_c3_tk(:,1), in_s_c3_tk(:,3), 'b', 'LineWidth', 1); hold off;
grid on;
ylim([-2 2]);
xlabel('Time (s)');
ylabel('Angular rate (rad./s)');
[h,icons] = legend('Left wheel speed','Right wheel speed','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Speed inputs: TK case 3');

%% PK segway

% Case 1
Figure_1 = figure(1);
plot(seg_case_1_pk(:,1) - seg_case_1_pk(1,1), -seg_case_1_pk(:,2) + seg_case_1_pk(1,2), 'r.', 'MarkerSize', 2); hold on;
plot(-c_seg_case_1_pk(:,2) + c_seg_case_1_pk(1,2), c_seg_case_1_pk(:,1) - c_seg_case_1_pk(1,1), 'k', 'LineWidth', 1); hold off;
grid on;
axis square;
xlabel('X distance (m)');
ylabel('Y distance (m)');
[h,icons] = legend('Webots path','Analytical path','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway path comparison: PK case 1');

Figure_2 = figure(2);
plot(T, unwrap(atan2(seg_case_1_pk(:,5),-seg_case_1_pk(:,6))), 'r.', 'MarkerSize', 2); hold on;
plot(T, c_seg_case_1_pk(:,3) + pi/2, 'k', 'LineWidth', 1); hold off;
grid on;
xlabel('Time (s)');
ylabel('Angular displacement (rad.)');
[h,icons] = legend('Webots calculated $$\theta$$','Analytical $$\theta$$','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway angle comparison: PK case 1');

Figure_3 = figure(3);
plot(T, seg_case_1_pk(:,7), 'r.', 'MarkerSize', 2); hold on;
plot(T, c_seg_case_1_pk(:,4), 'k', 'LineWidth', 1); hold off;
grid on;
xlabel('Time (s)');
ylabel('Angular rate (rad./s)');
[h,icons] = legend('Webots gyro readout','Analytical $$\dot{\theta}$$','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway angular rate comparison: PK case 1');

Figure_4 = figure(4);
plot(T, -seg_case_1_pk(:,6), 'm.', 'MarkerSize', 2); hold on;
plot(T, seg_case_1_pk(:,5), 'c.', 'MarkerSize', 2);
plot(T, sin(-c_seg_case_1_pk(:,3)), 'r', 'LineWidth', 1);
plot(T, cos(c_seg_case_1_pk(:,3)), 'b', 'LineWidth', 1); hold off;
grid on;
xlabel('Time (s)');
[h,icons] = legend('Webots compass X','Webots compass Y','Analytical $$\hat{x}$$','Analytical $$\hat{y}$$','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway compass comparison: PK case 1');

l_f = 0.25;
w_r = 0.35;
XB = [0 10];
YB = [0 10];
[ d_f, d_r ] = lidar_calc(10 - c_seg_case_1_pk(:,2), c_seg_case_1_pk(:,1), c_seg_case_1_pk(:,3) + pi/2, l_f, w_r, XB, YB);

Figure_5 = figure(5);
plot(T, seg_case_1_pk(:,3)*10/4096, 'm.', 'MarkerSize', 2); hold on;
plot(T, seg_case_1_pk(:,4)*10/4096, 'c.', 'MarkerSize', 2);
plot(T, d_f, 'r', 'LineWidth', 1);
plot(T, d_r, 'b', 'LineWidth', 1); hold off;
grid on;
xlabel('Time(s)');
ylabel('Distance (m)');
[h,icons] = legend('Webots front LIDAR','Webots right LIDAR','Analytical $$d_f$$','Analytical $$d_r$$','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway LIDAR comparison: PK case 1');

% Case 2
Figure_6 = figure(6);
plot(seg_case_2_pk(:,1) - seg_case_2_pk(1,1), -seg_case_2_pk(:,2) + seg_case_2_pk(1,2), 'g.', 'MarkerSize', 2); hold on;
plot(-c_seg_case_2_pk(:,2) + c_seg_case_2_pk(1,2), c_seg_case_2_pk(:,1) - c_seg_case_2_pk(1,1), 'k', 'LineWidth', 1); hold off;
grid on;
axis square;
axis([-1 2.5 -3 0.5]);
xlabel('X distance (m)');
ylabel('Y distance (m)');
[h,icons] = legend('Webots path','Analytical path','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway path comparison: PK case 2');

Figure_7 = figure(7);
plot(T, unwrap(atan2(seg_case_2_pk(:,5),-seg_case_2_pk(:,6))), 'g.', 'MarkerSize', 2); hold on;
plot(T, c_seg_case_2_pk(:,3) + pi/2, 'k', 'LineWidth', 1); hold off;
grid on;
ylim([-9 2]);
xlabel('Time (s)');
ylabel('Angular displacement (rad.)');
[h,icons] = legend('Webots calculated $$\theta$$','Analytical $$\theta$$','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway angle comparison: PK case 2');

Figure_8 = figure(8);
plot(T, seg_case_2_pk(:,7), 'g.', 'MarkerSize', 2); hold on;
plot(T, c_seg_case_2_pk(:,4), 'k', 'LineWidth', 1); hold off;
grid on;
xlabel('Time (s)');
ylabel('Angular rate (rad./s)');
[h,icons] = legend('Webots gyro readout','Analytical $$\dot{\theta}$$','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway angular rate comparison: PK case 1');

Figure_9 = figure(9);
plot(T, -seg_case_2_pk(:,6), 'm.', 'MarkerSize', 2); hold on;
plot(T, seg_case_2_pk(:,5), 'c.', 'MarkerSize', 2);
plot(T, sin(-c_seg_case_2_pk(:,3)), 'r', 'LineWidth', 1);
plot(T, cos(c_seg_case_2_pk(:,3)), 'b', 'LineWidth', 1); hold off;
grid on;
xlabel('Time (s)');
[h,icons] = legend('Webots compass X','Webots compass Y','Analytical $$\hat{x}$$','Analytical $$\hat{y}$$','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway compass comparison: PK case 2');

l_f = 0.25;
w_r = 0.35;
XB = [0 10];
YB = [0 10];
[ d_f, d_r ] = lidar_calc(10 - c_seg_case_2_pk(:,2), c_seg_case_2_pk(:,1), c_seg_case_2_pk(:,3) + pi/2, l_f, w_r, XB, YB);

Figure_10 = figure(10);
plot(T, seg_case_2_pk(:,3)*10/4096, 'm.', 'MarkerSize', 2); hold on;
plot(T, seg_case_2_pk(:,4)*10/4096, 'c.', 'MarkerSize', 2);
plot(T, d_f, 'r', 'LineWidth', 1);
plot(T, d_r, 'b', 'LineWidth', 1); hold off;
grid on;
xlabel('Time (s)');
ylabel('Distance (m)');
[h,icons] = legend('Webots front LIDAR','Webots right LIDAR','Analytical $$d_f$$','Analytical $$d_r$$','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway LIDAR comparison: PK case 2');

% Case 3
Figure_11 = figure(11);
plot(seg_case_3_pk(:,1) - seg_case_3_pk(1,1), -seg_case_3_pk(:,2) + seg_case_3_pk(1,2), 'b.', 'MarkerSize', 2); hold on;
plot(-c_seg_case_3_pk(:,2) + c_seg_case_3_pk(1,2), c_seg_case_3_pk(:,1) - c_seg_case_3_pk(1,1), 'k', 'LineWidth', 1); hold off;
grid on;
axis([-3 3 -5 1]);
axis square;
xlabel('X distance (m)');
ylabel('Y distance (m)');
[h,icons] = legend('Webots path','Analytical path','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway path comparison: PK case 3');

Figure_12 = figure(12);
plot(T, unwrap(atan2(seg_case_3_pk(:,5),-seg_case_3_pk(:,6))), 'b.', 'MarkerSize', 2); hold on;
plot(T, c_seg_case_3_pk(:,3) + pi/2, 'k', 'LineWidth', 1); hold off;
grid on;
xlabel('Time (s)');
ylabel('Angular displacement (rad.)');
[h,icons] = legend('Webots calculated $$\theta$$','Analytical $$\theta$$','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway angle comparison: PK case 3');

Figure_13 = figure(13);
plot(T, seg_case_3_pk(:,7), 'b.', 'MarkerSize', 2); hold on;
plot(T, c_seg_case_3_pk(:,4), 'k', 'LineWidth', 1); hold off;
grid on;
xlabel('Time (s)');
ylabel('Angular rate (rad./s)');
[h,icons] = legend('Webots gyro readout','Analytical $$\dot{\theta}$$','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway angular rate comparison: PK case 3');

Figure_14 = figure(14);
plot(T, -seg_case_3_pk(:,6), 'm.', 'MarkerSize', 2); hold on;
plot(T, seg_case_3_pk(:,5), 'c.', 'MarkerSize', 2);
plot(T, sin(-c_seg_case_3_pk(:,3)), 'r', 'LineWidth', 1);
plot(T, cos(c_seg_case_3_pk(:,3)), 'b', 'LineWidth', 1); hold off;
grid on;
xlabel('Time (s)');
[h,icons] = legend('Webots compass X','Webots compass Y','Analytical $$\hat{x}$$','Analytical $$\hat{y}$$','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway compass comparison: PK case 3');

l_f = 0.25;
w_r = 0.35;
XB = [0 10];
YB = [0 10];
[ d_f, d_r ] = lidar_calc(10 - c_seg_case_3_pk(:,2), c_seg_case_3_pk(:,1), c_seg_case_3_pk(:,3) + pi/2, l_f, w_r, XB, YB);

Figure_15 = figure(15);
plot(T, seg_case_3_pk(:,3)*10/4096, 'm.', 'MarkerSize', 2); hold on;
plot(T, seg_case_3_pk(:,4)*10/4096, 'c.', 'MarkerSize', 2);
plot(T, d_f, 'r', 'LineWidth', 1);
plot(T, d_r, 'b', 'LineWidth', 1); hold off;
grid on;
xlabel('Time (s)');
ylabel('Distance (m)');
[h,icons] = legend('Webots front LIDAR','Webots right LIDAR','Analytical $$d_f$$','Analytical $$d_r$$','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway LIDAR comparison: PK case 3');

%% Stats S PK 1

d = 0.502;
w = 0.53;

XS = seg_case_1_pk(:,1) - seg_case_1_pk(1,1);
YS = -seg_case_1_pk(:,2) + seg_case_1_pk(1,2);

XC = -c_seg_case_1_pk(:,2) + c_seg_case_1_pk(1,2);
YC = c_seg_case_1_pk(:,1) - c_seg_case_1_pk(1,1);

D = sqrt((XS - XC).^2 + (YS - YC).^2);

THS = unwrap(atan2(seg_case_1_pk(:,5),-seg_case_1_pk(:,6)));
THC = c_seg_case_1_pk(:,3) + pi/2;

THDS = seg_case_1_pk(:,7);
THDC = c_seg_case_1_pk(:,4);

CX = -seg_case_1_pk(:,6);
CY = seg_case_1_pk(:,5);

CCX = cos(THC);
CCY = sin(THC);

ERRX = XS - XC;
ERRY = YS - YC;

ERRTH = THS - THC;
ERRTHD = THDS - THDC;

ERRCX = CX - CCX;
ERRCY = CY - CCY;

Figure_1 = figure(1);
plot(T, D/d, 'k.', 'MarkerSize', 2); hold on;
plot(T, ERRX/d, 'r.', 'MarkerSize', 2);
plot(T, ERRY/d, 'b.', 'MarkerSize', 2); hold off;
grid on;
xlabel('Time (s)');
ylabel('m/m');
[h,icons] = legend('Distance deviation','X position deviation','Y position deviation','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway normalized linear errors: PK case 1');

Figure_2 = figure(2);
plot(T, ERRTH*w/d, 'k.', 'MarkerSize', 2);
grid on;
xlabel('Time (s)');
ylabel('rad.');
[h,icons] = legend('Angular deviation','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway normalized angular errors: PK case 1');

Figure_3 = figure(3);
plot(T, ERRTHD*w/d, 'k.', 'MarkerSize', 2);
grid on;
xlabel('Time (s)');
ylabel('$$s^{-1}$$');
[h,icons] = legend('Angular rate deviation','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway normalized angular rate errors: PK case 1');

Figure_4 = figure(4);
plot(T, ERRCX, 'r.', 'MarkerSize', 2); hold on;
plot(T, ERRCY, 'b.', 'MarkerSize', 2); hold off;
grid on;
xlabel('Time (s)');
[h,icons] = legend('X component deviation','Y component deviation','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway normalized compass component errors: PK case 1');

l_f = 0.25;
w_r = 0.35;
XB = [0 10];
YB = [0 10];
[ d_f, d_r ] = lidar_calc(10 - c_seg_case_1_pk(:,2), c_seg_case_1_pk(:,1), c_seg_case_1_pk(:,3) + pi/2, l_f, w_r, XB, YB);

LIDF = seg_case_1_pk(:,3)*10/4096;
LIDR = seg_case_1_pk(:,4)*10/4096;

DF = d_f;
DR = d_r;

ERRDF = LIDF - DF;
ERRDR = LIDR - DR;

Figure_5 = figure(5);
plot(T, ERRDF/d, 'r.', 'MarkerSize', 2); hold on;
plot(T, ERRDR/d, 'b.', 'MarkerSize', 2); hold off;
grid on;
xlabel('Time (s)');
ylabel('m/m');
[h,icons] = legend('Front LIDAR deviation','Right LIDAR deviation','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway normalized distance sensor errors: PK case 1');

%% Stats S PK 2

d = 0.502;
w = 0.53;

XS = seg_case_2_pk(:,1) - seg_case_2_pk(1,1);
YS = -seg_case_2_pk(:,2) + seg_case_2_pk(1,2);

XC = -c_seg_case_2_pk(:,2) + c_seg_case_2_pk(1,2);
YC = c_seg_case_2_pk(:,1) - c_seg_case_2_pk(1,1);

THS = unwrap(atan2(seg_case_2_pk(:,5),-seg_case_2_pk(:,6)));
THC = c_seg_case_2_pk(:,3) + pi/2;

THDS = seg_case_2_pk(:,7);
THDC = c_seg_case_2_pk(:,4);

CX = -seg_case_2_pk(:,6);
CY = seg_case_2_pk(:,5);

CCX = cos(THC);
CCY = sin(THC);

ERRX = XS - XC;
ERRY = YS - YC;

ERRTH = THS - THC;
ERRTHD = THDS - THDC;

ERRCX = CX - CCX;
ERRCY = CY - CCY;

D = sqrt((XS - XC).^2 + (YS - YC).^2);

Figure_1 = figure(1);
plot(T, D/d, 'k.', 'MarkerSize', 2); hold on;
plot(T, ERRX/d, 'r.', 'MarkerSize', 2);
plot(T, ERRY/d, 'b.', 'MarkerSize', 2); hold off;
grid on;
xlabel('Time (s)');
ylabel('m/m');
[h,icons] = legend('Distance deviation','X position deviation','Y position deviation','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway normalized linear errors: PK case 2');

Figure_2 = figure(2);
plot(T, ERRTH*w/d, 'k.', 'MarkerSize', 2);
grid on;
xlabel('Time (s)');
ylabel('rad.');
[h,icons] = legend('Angular deviation','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway normalized angular errors: PK case 2');

Figure_3 = figure(3);
plot(T, ERRTHD*w/d, 'k.', 'MarkerSize', 2);
grid on;
xlabel('Time (s)');
ylabel('$$s^{-1}$$');
[h,icons] = legend('Angular rate deviation','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway normalized angular rate errors: PK case 2');

Figure_4 = figure(4);
plot(T, ERRCX, 'r.', 'MarkerSize', 2); hold on;
plot(T, ERRCY, 'b.', 'MarkerSize', 2); hold off;
grid on;
xlabel('Time (s)');
[h,icons] = legend('X component deviation','Y component deviation','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway normalized compass component errors: PK case 2');

l_f = 0.25;
w_r = 0.35;
XB = [0 10];
YB = [0 10];
[ d_f, d_r ] = lidar_calc(10 - c_seg_case_2_pk(:,2), c_seg_case_2_pk(:,1), c_seg_case_2_pk(:,3) + pi/2, l_f, w_r, XB, YB);

LIDF = seg_case_2_pk(:,3)*10/4096;
LIDR = seg_case_2_pk(:,4)*10/4096;

DF = d_f;
DR = d_r;

Figure_5 = figure(5);
plot(T, ERRDF/d, 'r.', 'MarkerSize', 2); hold on;
plot(T, ERRDR/d, 'b.', 'MarkerSize', 2); hold off;
grid on;
xlabel('Time (s)');
ylabel('m/m');
[h,icons] = legend('Front LIDAR deviation','Right LIDAR deviation','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway normalized distance sensor errors: PK case 2');

%% Stats S PK 3

d = 0.502;
w = 0.53;

XS = seg_case_3_pk(:,1) - seg_case_3_pk(1,1);
YS = -seg_case_3_pk(:,2) + seg_case_3_pk(1,2);

XC = -c_seg_case_3_pk(:,2) + c_seg_case_3_pk(1,2);
YC = c_seg_case_3_pk(:,1) - c_seg_case_3_pk(1,1);

THS = unwrap(atan2(seg_case_3_pk(:,5),-seg_case_3_pk(:,6)));
THC = c_seg_case_3_pk(:,3) + pi/2;

THDS = seg_case_3_pk(:,7);
THDC = c_seg_case_3_pk(:,4);

CX = -seg_case_3_pk(:,6);
CY = seg_case_3_pk(:,5);

CCX = cos(THC);
CCY = sin(THC);

ERRX = XS - XC;
ERRY = YS - YC;

ERRTH = THS - THC;
ERRTHD = THDS - THDC;

ERRCX = CX - CCX;
ERRCY = CY - CCY;

D = sqrt((XS - XC).^2 + (YS - YC).^2);

Figure_1 = figure(1);
plot(T, D/d, 'k.', 'MarkerSize', 2); hold on;
plot(T, ERRX/d, 'r.', 'MarkerSize', 2);
plot(T, ERRY/d, 'b.', 'MarkerSize', 2); hold off;
grid on;
xlabel('Time (s)');
ylabel('m/m');
[h,icons] = legend('Distance deviation','X position deviation','Y position deviation','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway normalized linear errors: PK case 3');

Figure_2 = figure(2);
plot(T, ERRTH*w/d, 'k.', 'MarkerSize', 2);
grid on;
xlabel('Time (s)');
ylabel('rad.');
[h,icons] = legend('Angular deviation','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway normalized angular errors: PK case 3');

Figure_3 = figure(3);
plot(T, ERRTHD*w/d, 'k.', 'MarkerSize', 2);
grid on;
xlabel('Time (s)');
ylabel('$$s^{-1}$$');
[h,icons] = legend('Angular rate deviation','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway normalized angular rate errors: PK case 3');

Figure_4 = figure(4);
plot(T, ERRCX, 'r.', 'MarkerSize', 2); hold on;
plot(T, ERRCY, 'b.', 'MarkerSize', 2); hold off;
grid on;
xlabel('Time (s)');
[h,icons] = legend('X component deviation','Y component deviation','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway normalized compass component errors: PK case 3');

l_f = 0.25;
w_r = 0.35;
XB = [0 10];
YB = [0 10];
[ d_f, d_r ] = lidar_calc(10 - c_seg_case_3_pk(:,2), c_seg_case_3_pk(:,1), c_seg_case_3_pk(:,3) + pi/2, l_f, w_r, XB, YB);

LIDF = seg_case_3_pk(:,3)*10/4096;
LIDR = seg_case_3_pk(:,4)*10/4096;

DF = d_f;
DR = d_r;

Figure_5 = figure(5);
plot(T, ERRDF/d, 'r.', 'MarkerSize', 2); hold on;
plot(T, ERRDR/d, 'b.', 'MarkerSize', 2); hold off;
grid on;
xlabel('Time (s)');
ylabel('m/m');
[h,icons] = legend('Front LIDAR deviation','Right LIDAR deviation','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway normalized distance sensor errors: PK case 3');

%% PK paperbot

% Case 1
Figure_1 = figure(1);
plot(p_case_1_pk(:,1) - p_case_1_pk(1,1), -p_case_1_pk(:,2) + p_case_1_pk(1,2), 'r.', 'MarkerSize', 2); hold on;
plot(-c_p_case_1_pk(:,2) + c_p_case_1_pk(1,2), c_p_case_1_pk(:,1) - c_p_case_1_pk(1,1), 'k', 'LineWidth', 1); hold off;
grid on;
axis([-0.1 0.5 -0.2 0.4]);
axis square;
xlabel('X distance (m)');
ylabel('Y distance (m)');
[h,icons] = legend('Webots path','Analytical path','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot path comparison: PK case 1');

Figure_2 = figure(2);
plot(T, unwrap(atan2(p_case_1_pk(:,5),-p_case_1_pk(:,6))), 'r.', 'MarkerSize', 2); hold on;
plot(T, c_p_case_1_pk(:,3) + pi/2, 'k', 'LineWidth', 1); hold off;
grid on;
xlabel('Time (s)');
ylabel('Angular displacement (rad.)');
[h,icons] = legend('Webots calculated $$\theta$$','Analytical $$\theta$$','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot angle comparison: PK case 1');

Figure_3 = figure(3);
plot(T, p_case_1_pk(:,7), 'r.', 'MarkerSize', 2); hold on;
plot(T, c_p_case_1_pk(:,4), 'k', 'LineWidth', 1); hold off;
grid on;
xlabel('Time (s)');
ylabel('Angular rate (rad./s)');
[h,icons] = legend('Webots gyro readout','Analytical $$\dot{\theta}$$','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot angular rate comparison: PK case 1');

Figure_4 = figure(4);
plot(T, -p_case_1_pk(:,6), 'm.', 'MarkerSize', 2); hold on;
plot(T, p_case_1_pk(:,5), 'c.', 'MarkerSize', 2);
plot(T, sin(-c_p_case_1_pk(:,3)), 'r', 'LineWidth', 1);
plot(T, cos(c_p_case_1_pk(:,3)), 'b', 'LineWidth', 1); hold off;
grid on;
xlabel('Time (s)');
[h,icons] = legend('Webots compass X','Webots compass Y','Analytical $$\hat{x}$$','Analytical $$\hat{y}$$','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot compass comparison: PK case 1');

l_f = 0.025;
w_r = 0.045;
XB = [4.5 5.5];
YB = [4.5 5.5];
[ d_f, d_r ] = lidar_calc(10 - c_p_case_1_pk(:,2), c_p_case_1_pk(:,1), c_p_case_1_pk(:,3) + pi/2, l_f, w_r, XB, YB);

Figure_5 = figure(5);
plot(T, p_case_1_pk(:,3)*1/4096, 'm.', 'MarkerSize', 2); hold on;
plot(T, p_case_1_pk(:,4)*1/4096, 'c.', 'MarkerSize', 2);
plot(T, d_f, 'r', 'LineWidth', 1);
plot(T, d_r, 'b', 'LineWidth', 1); hold off;
grid on;
xlabel('Time (s)');
ylabel('Distance (m)');
[h,icons] = legend('Webots front LIDAR','Webots right LIDAR','Analytical $$d_f$$','Analytical $$d_r$$','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot LIDAR comparison: PK case 1');

% Case 2
Figure_6 = figure(6);
plot(p_case_2_pk(:,1) - p_case_2_pk(1,1), -p_case_2_pk(:,2) + p_case_2_pk(1,2), 'g.', 'MarkerSize', 2); hold on;
plot(-c_p_case_2_pk(:,2) + c_p_case_2_pk(1,2), c_p_case_2_pk(:,1) - c_p_case_2_pk(1,1), 'k', 'LineWidth', 1); hold off;
grid on;
axis([-0.25 0.05 -0.05 0.25]);
axis square;
xlabel('X distance (m)');
ylabel('Y distance (m)');
[h,icons] = legend('Webots path','Analytical path','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot path comparison: PK case 2');

Figure_7 = figure(7);
plot(T, unwrap(atan2(p_case_2_pk(:,5),-p_case_2_pk(:,6))), 'g.', 'MarkerSize', 2); hold on;
plot(T, c_p_case_2_pk(:,3) + pi/2, 'k', 'LineWidth', 1); hold off;
grid on;
xlabel('Time (s)');
ylabel('Angular displacement (rad.)');
[h,icons] = legend('Webots calculated $$\theta$$','Analytical $$\theta$$','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot angle comparison: PK case 2');

Figure_8 = figure(8);
plot(T, p_case_2_pk(:,7), 'g.', 'MarkerSize', 2); hold on;
plot(T, c_p_case_2_pk(:,4), 'k', 'LineWidth', 1); hold off;
grid on;
xlabel('Time (s)');
ylabel('Angular rate (rad./s)');
[h,icons] = legend('Webots gyro readout','Analytical $$\dot{\theta}$$','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot angular rate comparison: PK case 2');

Figure_9 = figure(9);
plot(T, -p_case_2_pk(:,6), 'm.', 'MarkerSize', 2); hold on;
plot(T, p_case_2_pk(:,5), 'c.', 'MarkerSize', 2);
plot(T, sin(-c_p_case_2_pk(:,3)), 'r', 'LineWidth', 1);
plot(T, cos(c_p_case_2_pk(:,3)), 'b', 'LineWidth', 1); hold off;
grid on;
xlabel('Time (s)');
[h,icons] = legend('Webots compass X','Webots compass Y','Analytical $$\hat{x}$$','Analytical $$\hat{y}$$','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot compass comparison: PK case 2');

l_f = 0.025;
w_r = 0.045;
XB = [4.5 5.5];
YB = [4.5 5.5];
[ d_f, d_r ] = lidar_calc(10 - c_p_case_2_pk(:,2), c_p_case_2_pk(:,1), c_p_case_2_pk(:,3) + pi/2, l_f, w_r, XB, YB);

Figure_10 = figure(10);
plot(T, p_case_2_pk(:,3)*1/4096, 'm.', 'MarkerSize', 2); hold on;
plot(T, p_case_2_pk(:,4)*1/4096, 'c.', 'MarkerSize', 2);
plot(T, d_f, 'r', 'LineWidth', 1);
plot(T, d_r, 'b', 'LineWidth', 1); hold off;
grid on;
xlabel('Time (s)');
ylabel('Distance (m)');
[h,icons] = legend('Webots front LIDAR','Webots right LIDAR','Analytical $$d_f$$','Analytical $$d_r$$','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot LIDAR comparison: PK case 2');

% Case 3
Figure_11 = figure(11);
plot(p_case_3_pk(:,1) - p_case_3_pk(1,1), -p_case_3_pk(:,2) + p_case_3_pk(1,2), 'b.', 'MarkerSize', 2); hold on;
plot(-c_p_case_3_pk(:,2) + c_p_case_3_pk(1,2), c_p_case_3_pk(:,1) - c_p_case_3_pk(1,1), 'k', 'LineWidth', 1); hold off;
grid on;
axis([-0.3 0.25 -0.5 0.05]);
axis square;
xlabel('X distance (m)');
ylabel('Y distance (m)');
[h,icons] = legend('Webots path','Analytical path','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot path: PK case 3');

Figure_12 = figure(12);
plot(T, unwrap(atan2(p_case_3_pk(:,5),-p_case_3_pk(:,6))), 'b.', 'MarkerSize', 2); hold on;
plot(T, c_p_case_3_pk(:,3) + pi/2, 'k', 'LineWidth', 1); hold off;
grid on;
xlabel('Time (s)');
ylabel('Angular displacement (rad.)');
[h,icons] = legend('Webots calculated $$\theta$$','Analytical $$\theta$$','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot angle: PK case 3');

Figure_13 = figure(13);
plot(T, p_case_3_pk(:,7), 'b.', 'MarkerSize', 2); hold on;
plot(T, c_p_case_3_pk(:,4), 'k', 'LineWidth', 1); hold off;
grid on;
xlabel('Time (s)');
ylabel('Angular rate (rad./s)');
[h,icons] = legend('Webots gyro readout','Analytical $$\dot{\theta}$$','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot angular rate: PK case 3');

Figure_14 = figure(14);
plot(T, -p_case_3_pk(:,6), 'm.', 'MarkerSize', 2); hold on;
plot(T, p_case_3_pk(:,5), 'c.', 'MarkerSize', 2);
plot(T, sin(-c_p_case_3_pk(:,3)), 'r', 'LineWidth', 1);
plot(T, cos(c_p_case_3_pk(:,3)), 'b', 'LineWidth', 1); hold off;
grid on;
xlabel('Time (s)');
[h,icons] = legend('Webots compass X','Webots compass Y','Analytical $$\hat{x}$$','Analytical $$\hat{y}$$','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot compass components: PK case 3');

l_f = 0.025;
w_r = 0.045;
XB = [4.5 5.5];
YB = [4.5 5.5];
[ d_f, d_r ] = lidar_calc(10 - c_p_case_3_pk(:,2), c_p_case_3_pk(:,1), c_p_case_3_pk(:,3) + pi/2, l_f, w_r, XB, YB);

Figure_15 = figure(15);
plot(T, p_case_3_pk(:,3)*1/4096, 'm.', 'MarkerSize', 2); hold on;
plot(T, p_case_3_pk(:,4)*1/4096, 'c.', 'MarkerSize', 2);
plot(T, d_f, 'r', 'LineWidth', 1);
plot(T, d_r, 'b', 'LineWidth', 1); hold off;
grid on;
xlabel('Time (s)');
ylabel('Distance (m)');
[h,icons] = legend('Webots front LIDAR','Webots right LIDAR','Analytical $$d_f$$','Analytical $$d_r$$','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot LIDAR comparison: PK case 3');

%% Stats P PK 1

d = 0.05;
w = 0.09;

XS = p_case_1_pk(:,1) - p_case_1_pk(1,1);
YS = -p_case_1_pk(:,2) + p_case_1_pk(1,2);

XC = -c_p_case_1_pk(:,2) + c_p_case_1_pk(1,2);
YC = c_p_case_1_pk(:,1) - c_p_case_1_pk(1,1);

D = sqrt((XS - XC).^2 + (YS - YC).^2);

THS = unwrap(atan2(p_case_1_pk(:,5),-p_case_1_pk(:,6)));
THC = c_p_case_1_pk(:,3) + pi/2;

THDS = p_case_1_pk(:,7);
THDC = c_p_case_1_pk(:,4);

CX = -p_case_1_pk(:,6);
CY = p_case_1_pk(:,5);

CCX = cos(THC);
CCY = sin(THC);

ERRX = XS - XC;
ERRY = YS - YC;

ERRTH = THS - THC;
ERRTHD = THDS - THDC;

ERRCX = CX - CCX;
ERRCY = CY - CCY;

Figure_1 = figure(1);
plot(T, D/d, 'k.', 'MarkerSize', 2); hold on;
plot(T, ERRX/d, 'r.', 'MarkerSize', 2);
plot(T, ERRY/d, 'b.', 'MarkerSize', 2); hold off;
grid on;
xlabel('Time (s)');
ylabel('m/m');
[h,icons] = legend('Distance deviation','X position deviation','Y position deviation','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot normalized linear errors: PK case 1');

Figure_2 = figure(2);
plot(T, ERRTH*w/d, 'k.', 'MarkerSize', 2);
grid on;
xlabel('Time (s)');
ylabel('rad.');
[h,icons] = legend('Angular deviation','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot normalized angular errors: PK case 1');

Figure_3 = figure(3);
plot(T, ERRTHD*w/d, 'k.', 'MarkerSize', 2);
grid on;
xlabel('Time (s)');
ylabel('$$s^{-1}$$');
[h,icons] = legend('Angular rate deviation','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot normalized angular rate errors: PK case 1');

Figure_4 = figure(4);
plot(T, ERRCX, 'r.', 'MarkerSize', 2); hold on;
plot(T, ERRCY, 'b.', 'MarkerSize', 2); hold off;
grid on;
xlabel('Time (s)');
[h,icons] = legend('X component deviation','Y component deviation','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot normalized compass component errors: PK case 1');

l_f = 0.025;
w_r = 0.045;
XB = [4.5 5.5];
YB = [4.5 5.5];
[ d_f, d_r ] = lidar_calc(10 - c_p_case_1_pk(:,2), c_p_case_1_pk(:,1), c_p_case_1_pk(:,3) + pi/2, l_f, w_r, XB, YB);

LIDF = p_case_1_pk(:,3)*1/4096;
LIDR = p_case_1_pk(:,4)*1/4096;

DF = d_f;
DR = d_r;

ERRDF = LIDF - DF;
ERRDR = LIDR - DR;

Figure_5 = figure(5);
plot(T, ERRDF/d, 'r.', 'MarkerSize', 2); hold on;
plot(T, ERRDR/d, 'b.', 'MarkerSize', 2); hold off;
grid on;
xlabel('Time (s)');
ylabel('m/m');
[h,icons] = legend('Front LIDAR deviation','Right LIDAR deviation','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot normalized distance sensor errors: PK case 1');

%% Stats P PK 2

d = 0.05;
w = 0.09;

XS = p_case_2_pk(:,1) - p_case_2_pk(1,1);
YS = -p_case_2_pk(:,2) + p_case_2_pk(1,2);

XC = -c_p_case_2_pk(:,2) + c_p_case_2_pk(1,2);
YC = c_p_case_2_pk(:,1) - c_p_case_2_pk(1,1);

D = sqrt((XS - XC).^2 + (YS - YC).^2);

THS = unwrap(atan2(p_case_2_pk(:,5),-p_case_2_pk(:,6)));
THC = c_p_case_2_pk(:,3) + pi/2;

THDS = p_case_2_pk(:,7);
THDC = c_p_case_2_pk(:,4);

CX = -p_case_2_pk(:,6);
CY = p_case_2_pk(:,5);

CCX = cos(THC);
CCY = sin(THC);

ERRX = XS - XC;
ERRY = YS - YC;

ERRTH = THS - THC;
ERRTHD = THDS - THDC;

ERRCX = CX - CCX;
ERRCY = CY - CCY;

Figure_1 = figure(1);
plot(T, D/d, 'k.', 'MarkerSize', 2); hold on;
plot(T, ERRX/d, 'r.', 'MarkerSize', 2);
plot(T, ERRY/d, 'b.', 'MarkerSize', 2); hold off;
grid on;
xlabel('Time (s)');
ylabel('m/m');
[h,icons] = legend('Distance deviation','X position deviation','Y position deviation','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot normalized linear errors: PK case 2');

Figure_2 = figure(2);
plot(T, ERRTH*w/d, 'k.', 'MarkerSize', 2);
grid on;
xlabel('Time (s)');
ylabel('rad.');
[h,icons] = legend('Angular deviation','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot normalized angular errors: PK case 2');

Figure_3 = figure(3);
plot(T, ERRTHD*w/d, 'k.', 'MarkerSize', 2);
grid on;
xlabel('Time (s)');
ylabel('$$s^{-1}$$');
[h,icons] = legend('Angular rate deviation','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot normalized angular rate errors: PK case 2');

Figure_4 = figure(4);
plot(T, ERRCX, 'r.', 'MarkerSize', 2); hold on;
plot(T, ERRCY, 'b.', 'MarkerSize', 2); hold off;
grid on;
xlabel('Time (s)');
[h,icons] = legend('X component deviation','Y component deviation','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot normalized compass component errors: PK case 2');

l_f = 0.025;
w_r = 0.045;
XB = [4.5 5.5];
YB = [4.5 5.5];
[ d_f, d_r ] = lidar_calc(10 - c_p_case_2_pk(:,2), c_p_case_2_pk(:,1), c_p_case_2_pk(:,3) + pi/2, l_f, w_r, XB, YB);

LIDF = p_case_2_pk(:,3)*1/4096;
LIDR = p_case_2_pk(:,4)*1/4096;

DF = d_f;
DR = d_r;

ERRDF = LIDF - DF;
ERRDR = LIDR - DR;

Figure_5 = figure(5);
plot(T, ERRDF/d, 'r.', 'MarkerSize', 2); hold on;
plot(T, ERRDR/d, 'b.', 'MarkerSize', 2); hold off;
grid on;
xlabel('Time (s)');
ylabel('m/m');
[h,icons] = legend('Front LIDAR deviation','Right LIDAR deviation','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot normalized distance sensor errors: PK case 2');

%% Stats P PK 3

d = 0.05;
w = 0.09;

XS = p_case_3_pk(:,1) - p_case_3_pk(1,1);
YS = -p_case_3_pk(:,2) + p_case_3_pk(1,2);

XC = -c_p_case_3_pk(:,2) + c_p_case_3_pk(1,2);
YC = c_p_case_3_pk(:,1) - c_p_case_3_pk(1,1);

D = sqrt((XS - XC).^2 + (YS - YC).^2);

THS = unwrap(atan2(p_case_3_pk(:,5),-p_case_3_pk(:,6)));
THC = c_p_case_3_pk(:,3) + pi/2;

THDS = p_case_3_pk(:,7);
THDC = c_p_case_3_pk(:,4);

CX = -p_case_3_pk(:,6);
CY = p_case_3_pk(:,5);

CCX = cos(THC);
CCY = sin(THC);

ERRX = XS - XC;
ERRY = YS - YC;

ERRTH = THS - THC;
ERRTHD = THDS - THDC;

ERRCX = CX - CCX;
ERRCY = CY - CCY;

Figure_1 = figure(1);
plot(T, D/d, 'k.', 'MarkerSize', 2); hold on;
plot(T, ERRX/d, 'r.', 'MarkerSize', 2);
plot(T, ERRY/d, 'b.', 'MarkerSize', 2); hold off;
grid on;
xlabel('Time (s)');
ylabel('Normalized deviation (m/m)');
[h,icons] = legend('Distance deviation','X position deviation','Y position deviation','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot normalized linear errors: PK case 3');

Figure_2 = figure(2);
plot(T, ERRTH*w/d, 'k.', 'MarkerSize', 2);
grid on;
xlabel('Time (s)');
ylabel('Angle (rad.)');
[h,icons] = legend('Normalized angular deviation','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot normalized angular errors: PK case 3');

Figure_3 = figure(3);
plot(T, ERRTHD*w/d, 'k.', 'MarkerSize', 2);
grid on;
xlabel('Time (s)');
ylabel('Normalized angular rate ($$s^{-1}$$)');
[h,icons] = legend('Angular rate deviation','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot normalized angular rate errors: PK case 3');

Figure_4 = figure(4);
plot(T, ERRCX, 'r.', 'MarkerSize', 2); hold on;
plot(T, ERRCY, 'b.', 'MarkerSize', 2); hold off;
grid on;
xlabel('Time (s)');
% ylabel('Angle (rad.)');
[h,icons] = legend('X component deviation','Y component deviation','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot compass component errors: PK case 3');

l_f = 0.025;
w_r = 0.045;
XB = [4.5 5.5];
YB = [4.5 5.5];
[ d_f, d_r ] = lidar_calc(10 - c_p_case_3_pk(:,2), c_p_case_3_pk(:,1), c_p_case_3_pk(:,3) + pi/2, l_f, w_r, XB, YB);

LIDF = p_case_3_pk(:,3)*1/4096;
LIDR = p_case_3_pk(:,4)*1/4096;

DF = d_f;
DR = d_r;

ERRDF = LIDF - DF;
ERRDR = LIDR - DR;

Figure_5 = figure(5);
plot(T, ERRDF/d, 'r.', 'MarkerSize', 2); hold on;
plot(T, ERRDR/d, 'b.', 'MarkerSize', 2); hold off;
grid on;
xlabel('Time (s)');
ylabel('m/m');
[h,icons] = legend('Front LIDAR deviation','Right LIDAR deviation','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot normalized distance sensor errors: PK case 3');

%% NB segway

% Case 1
Figure_1 = figure(1);
plot(seg_case_1_nb(:,1) - seg_case_1_nb(1,1), -seg_case_1_nb(:,2) + seg_case_1_nb(1,2), 'r.', 'MarkerSize', 2); hold on;
plot(-c_seg_case_1_nb(:,2) + c_seg_case_1_nb(1,2), c_seg_case_1_nb(:,1) - c_seg_case_1_nb(1,1), 'k', 'LineWidth', 1); hold off;
grid on;
axis([-3 1 -2.5 1.5]);
axis square;
xlabel('X distance (m)');
ylabel('Y distance (m)');
[h,icons] = legend('Webots path','Analytical path','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway path comparison: NB case 1');

Figure_2 = figure(2);
plot(T, unwrap(atan2(seg_case_1_nb(:,5),-seg_case_1_nb(:,6))), 'r.', 'MarkerSize', 2); hold on;
plot(T, c_seg_case_1_nb(:,3) + pi/2, 'k', 'LineWidth', 1); hold off;
grid on;
xlabel('Time (s)');
ylabel('Angular displacement (rad.)');
[h,icons] = legend('Webots calculated $$\theta$$','Analytical $$\theta$$','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway angle comparison: NB case 1');

Figure_3 = figure(3);
plot(T, seg_case_1_nb(:,7), 'r.', 'MarkerSize', 2); hold on;
plot(T, c_seg_case_1_nb(:,4), 'k', 'LineWidth', 1); hold off;
grid on;
xlabel('Time (s)');
ylabel('Angular rate (rad./s)');
[h,icons] = legend('Webots gyro readout','Analytical $$\dot{\theta}$$','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway angular rate comparison: NB case 1');

Figure_4 = figure(4);
plot(T, -seg_case_1_nb(:,6), 'm.', 'MarkerSize', 2); hold on;
plot(T, seg_case_1_nb(:,5), 'c.', 'MarkerSize', 2);
plot(T, sin(-c_seg_case_1_nb(:,3)), 'r', 'LineWidth', 1);
plot(T, cos(c_seg_case_1_nb(:,3)), 'b', 'LineWidth', 1); hold off;
grid on;
xlabel('Time (s)');
[h,icons] = legend('Webots compass X','Webots compass Y','Analytical $$\hat{x}$$','Analytical $$\hat{y}$$','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway compass comparison: NB case 1');

l_f = 0.25;
w_r = 0.35;
XB = [0 10];
YB = [0 10];
[ d_f, d_r ] = lidar_calc(10 - c_seg_case_1_nb(:,2), c_seg_case_1_nb(:,1), c_seg_case_1_nb(:,3) + pi/2, l_f, w_r, XB, YB);

Figure_5 = figure(5);
plot(T, seg_case_1_nb(:,3)*10/4096, 'm.', 'MarkerSize', 2); hold on;
plot(T, seg_case_1_nb(:,4)*10/4096, 'c.', 'MarkerSize', 2);
plot(T, d_f, 'r', 'LineWidth', 1);
plot(T, d_r, 'b', 'LineWidth', 1); hold off;
grid on;
xlabel('Time (s)');
ylabel('Distance (m)');
[h,icons] = legend('Webots front LIDAR','Webots right LIDAR','Analytical $$d_f$$','Analytical $$d_r$$','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway LIDAR comparison: NB case 1');

% Case 2
Figure_6 = figure(6);
plot(seg_case_2_nb(:,1) - seg_case_2_nb(1,1), -seg_case_2_nb(:,2) + seg_case_2_nb(1,2), 'g.', 'MarkerSize', 2); hold on;
plot(-c_seg_case_2_nb(:,2) + c_seg_case_2_nb(1,2), c_seg_case_2_nb(:,1) - c_seg_case_2_nb(1,1), 'k', 'LineWidth', 1); hold off;
grid on;
axis square;
axis([-2.5 1.5 -3 1]);
xlabel('X distance (m)');
ylabel('Y distance (m)');
[h,icons] = legend('Webots path','Analytical path','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway path comparison: NB case 2');

Figure_7 = figure(7);
plot(T, unwrap(atan2(seg_case_2_nb(:,5),-seg_case_2_nb(:,6))), 'g.', 'MarkerSize', 2); hold on;
plot(T, c_seg_case_2_nb(:,3) + pi/2, 'k', 'LineWidth', 1); hold off;
grid on;
xlabel('Time (s)');
ylabel('Angular displacement (rad.)');
[h,icons] = legend('Webots calculated $$\theta$$','Analytical $$\theta$$','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway angle comparison: NB case 2');

Figure_8 = figure(8);
plot(T, seg_case_2_nb(:,7), 'g.', 'MarkerSize', 2); hold on;
plot(T, c_seg_case_2_nb(:,4), 'k', 'LineWidth', 1); hold off;
grid on;
xlabel('Time (s)');
ylabel('Angular rate (rad./s)');
[h,icons] = legend('Webots gyro readout','Analytical $$\dot{\theta}$$','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway angular rate comparison: NB case 2');

Figure_9 = figure(9);
plot(T, -seg_case_2_nb(:,6), 'm.', 'MarkerSize', 2); hold on;
plot(T, seg_case_2_nb(:,5), 'c.', 'MarkerSize', 2);
plot(T, sin(-c_seg_case_2_nb(:,3)), 'r', 'LineWidth', 1);
plot(T, cos(c_seg_case_2_nb(:,3)), 'b', 'LineWidth', 1); hold off;
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

Figure_10 = figure(10);
plot(T, seg_case_2_nb(:,3)*10/4096, 'm.', 'MarkerSize', 2); hold on;
plot(T, seg_case_2_nb(:,4)*10/4096, 'c.', 'MarkerSize', 2);
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

% Case 3
Figure_11 = figure(11);
plot(seg_case_3_nb(:,1) - seg_case_3_nb(1,1), -seg_case_3_nb(:,2) + seg_case_3_nb(1,2), 'b.', 'MarkerSize', 2); hold on;
plot(-c_seg_case_3_nb(:,2) + c_seg_case_3_nb(1,2), c_seg_case_3_nb(:,1) - c_seg_case_3_nb(1,1), 'k', 'LineWidth', 1); hold off;
grid on;
axis([-3 3 -1.5 4.5]);
axis square;
xlabel('X distance (m)');
ylabel('Y distance (m)');
[h,icons] = legend('Webots path','Analytical path','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway path comparison: NB case 3');

Figure_12 = figure(12);
plot(T, unwrap(atan2(seg_case_3_nb(:,5),-seg_case_3_nb(:,6))), 'b.', 'MarkerSize', 2); hold on;
plot(T, c_seg_case_3_nb(:,3) + pi/2, 'k', 'LineWidth', 1); hold off;
grid on;
xlabel('Time (s)');
ylabel('Angular displacement (rad.)');
[h,icons] = legend('Webots calculated $$\theta$$','Analytical $$\theta$$','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway angle comparison: NB case 3');

Figure_13 = figure(13);
plot(T, seg_case_3_nb(:,7), 'b.', 'MarkerSize', 2); hold on;
plot(T, c_seg_case_3_nb(:,4), 'k', 'LineWidth', 1); hold off;
grid on;
xlabel('Time (s)');
ylabel('Angular rate (rad./s)');
[h,icons] = legend('Webots gyro readout','Analytical $$\dot{\theta}$$','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway angular rate comparison: NB case 3');

Figure_14 = figure(14);
plot(T, -seg_case_3_nb(:,6), 'm.', 'MarkerSize', 2); hold on;
plot(T, seg_case_3_nb(:,5), 'c.', 'MarkerSize', 2);
plot(T, sin(-c_seg_case_3_nb(:,3)), 'r', 'LineWidth', 1);
plot(T, cos(c_seg_case_3_nb(:,3)), 'b', 'LineWidth', 1); hold off;
grid on;
xlabel('Time (s)');
[h,icons] = legend('Webots compass X','Webots compass Y','Analytical $$\hat{x}$$','Analytical $$\hat{y}$$','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway compass comparison: NB case 3');

l_f = 0.25;
w_r = 0.35;
XB = [0 10];
YB = [0 10];
[ d_f, d_r ] = lidar_calc(10 - c_seg_case_3_nb(:,2), c_seg_case_3_nb(:,1), c_seg_case_3_nb(:,3) + pi/2, l_f, w_r, XB, YB);

Figure_15 = figure(15);
plot(T, seg_case_3_nb(:,3)*10/4096, 'm.', 'MarkerSize', 2); hold on;
plot(T, seg_case_3_nb(:,4)*10/4096, 'c.', 'MarkerSize', 2);
plot(T, d_f, 'r', 'LineWidth', 1);
plot(T, d_r, 'b', 'LineWidth', 1); hold off;
grid on;
xlabel('Time (s)');
ylabel('Distance (m)');
[h,icons] = legend('Webots front LIDAR','Webots right LIDAR','Analytical $$d_f$$','Analytical $$d_r$$','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway LIDAR comparison: NB case 3');

%% Stats S NB 1

d = 0.502;
w = 0.53;

XS = seg_case_1_nb(:,1) - seg_case_1_nb(1,1);
YS = -seg_case_1_nb(:,2) + seg_case_1_nb(1,2);

XC = -c_seg_case_1_nb(:,2) + c_seg_case_1_nb(1,2);
YC = c_seg_case_1_nb(:,1) - c_seg_case_1_nb(1,1);

D = sqrt((XS - XC).^2 + (YS - YC).^2);

THS = unwrap(atan2(seg_case_1_nb(:,5),-seg_case_1_nb(:,6)));
THC = c_seg_case_1_nb(:,3) + pi/2;

THDS = seg_case_1_nb(:,7);
THDC = c_seg_case_1_nb(:,4);

CX = -seg_case_1_nb(:,6);
CY = seg_case_1_nb(:,5);

CCX = cos(THC);
CCY = sin(THC);

ERRX = XS - XC;
ERRY = YS - YC;

ERRTH = THS - THC;
ERRTHD = THDS - THDC;

ERRCX = CX - CCX;
ERRCY = CY - CCY;

Figure_1 = figure(1);
plot(T, D/d, 'k.', 'MarkerSize', 2); hold on;
plot(T, ERRX/d, 'r.', 'MarkerSize', 2);
plot(T, ERRY/d, 'b.', 'MarkerSize', 2); hold off;
grid on;
xlabel('Time (s)');
ylabel('m/m');
[h,icons] = legend('Distance deviation','X position deviation','Y position deviation','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway normalized linear errors: NB case 1');

Figure_2 = figure(2);
plot(T, ERRTH*w/d, 'k.', 'MarkerSize', 2);
grid on;
xlabel('Time (s)');
ylabel('rad.');
[h,icons] = legend('Angular deviation','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway normalized angular errors: NB case 1');

Figure_3 = figure(3);
plot(T, ERRTHD*w/d, 'k.', 'MarkerSize', 2);
grid on;
xlabel('Time (s)');
ylabel('$$s^{-1}$$');
[h,icons] = legend('Angular rate deviation','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway normalized angular rate errors: NB case 1');

Figure_4 = figure(4);
plot(T, ERRCX, 'r.', 'MarkerSize', 2); hold on;
plot(T, ERRCY, 'b.', 'MarkerSize', 2); hold off;
grid on;
xlabel('Time (s)');
[h,icons] = legend('X component deviation','Y component deviation','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway compass component errors: NB case 1');

l_f = 0.25;
w_r = 0.35;
XB = [0 10];
YB = [0 10];
[ d_f, d_r ] = lidar_calc(10 - c_seg_case_1_nb(:,2), c_seg_case_1_nb(:,1), c_seg_case_1_nb(:,3) + pi/2, l_f, w_r, XB, YB);

LIDF = seg_case_1_pk(:,3)*10/4096;
LIDR = seg_case_1_pk(:,4)*10/4096;

DF = d_f;
DR = d_r;

ERRDF = LIDF - DF;
ERRDR = LIDR - DR;

Figure_5 = figure(5);
plot(T, ERRDF/d, 'r.', 'MarkerSize', 2); hold on;
plot(T, ERRDR/d, 'b.', 'MarkerSize', 2); hold off;
grid on;
xlabel('Time (s)');
ylabel('m/m');
[h,icons] = legend('Front LIDAR deviation','Right LIDAR deviation','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway normalized distance sensor errors: NB case 1');

%% Stats S NB 2

d = 0.502;
w = 0.53;

XS = seg_case_2_nb(:,1) - seg_case_2_nb(1,1);
YS = -seg_case_2_nb(:,2) + seg_case_2_nb(1,2);

XC = -c_seg_case_2_nb(:,2) + c_seg_case_2_nb(1,2);
YC = c_seg_case_2_nb(:,1) - c_seg_case_2_nb(1,1);

D = sqrt((XS - XC).^2 + (YS - YC).^2);

THS = unwrap(atan2(seg_case_2_nb(:,5),-seg_case_2_nb(:,6)));
THC = c_seg_case_2_nb(:,3) + pi/2;

THDS = seg_case_2_nb(:,7);
THDC = c_seg_case_2_nb(:,4);

CX = -seg_case_2_nb(:,6);
CY = seg_case_2_nb(:,5);

CCX = cos(THC);
CCY = sin(THC);

ERRX = XS - XC;
ERRY = YS - YC;

ERRTH = THS - THC;
ERRTHD = THDS - THDC;

ERRCX = CX - CCX;
ERRCY = CY - CCY;

Figure_1 = figure(1);
plot(T, D/d, 'k.', 'MarkerSize', 2); hold on;
plot(T, ERRX/d, 'r.', 'MarkerSize', 2);
plot(T, ERRY/d, 'b.', 'MarkerSize', 2); hold off;
grid on;
xlabel('Time (s)');
ylabel('m/m');
[h,icons] = legend('Distance deviation','X position deviation','Y position deviation','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway normalized linear errors: NB case 2');

Figure_2 = figure(2);
plot(T, ERRTH*w/d, 'k.', 'MarkerSize', 2);
grid on;
xlabel('Time (s)');
ylabel('rad.');
[h,icons] = legend('Angular deviation','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway normalized angular errors: NB case 2');

Figure_3 = figure(3);
plot(T, ERRTHD*w/d, 'k.', 'MarkerSize', 2);
grid on;
xlabel('Time (s)');
ylabel('$$s^{-1}$$');
[h,icons] = legend('Angular rate deviation','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway normalized angular rate errors: NB case 2');

Figure_4 = figure(4);
plot(T, ERRCX, 'r.', 'MarkerSize', 2); hold on;
plot(T, ERRCY, 'b.', 'MarkerSize', 2); hold off;
grid on;
xlabel('Time (s)');
[h,icons] = legend('X component deviation','Y component deviation','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway compass component errors: NB case 2');

l_f = 0.25;
w_r = 0.35;
XB = [0 10];
YB = [0 10];
[ d_f, d_r ] = lidar_calc(10 - c_seg_case_2_nb(:,2), c_seg_case_2_nb(:,1), c_seg_case_2_nb(:,3) + pi/2, l_f, w_r, XB, YB);

LIDF = seg_case_2_pk(:,3)*10/4096;
LIDR = seg_case_2_pk(:,4)*10/4096;

DF = d_f;
DR = d_r;

ERRDF = LIDF - DF;
ERRDR = LIDR - DR;

Figure_5 = figure(5);
plot(T, ERRDF/d, 'r.', 'MarkerSize', 2); hold on;
plot(T, ERRDR/d, 'b.', 'MarkerSize', 2); hold off;
grid on;
xlabel('Time (s)');
ylabel('m/m');
[h,icons] = legend('Front LIDAR deviation','Right LIDAR deviation','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway normalized distance sensor errors: NB case 2');

%% Stats S NB 3

d = 0.502;
w = 0.53;

XS = seg_case_3_nb(:,1) - seg_case_3_nb(1,1);
YS = -seg_case_3_nb(:,2) + seg_case_3_nb(1,2);

XC = -c_seg_case_3_nb(:,2) + c_seg_case_3_nb(1,2);
YC = c_seg_case_3_nb(:,1) - c_seg_case_3_nb(1,1);

D = sqrt((XS - XC).^2 + (YS - YC).^2);

THS = unwrap(atan2(seg_case_3_nb(:,5),-seg_case_3_nb(:,6)));
THC = c_seg_case_3_nb(:,3) + pi/2;

THDS = seg_case_3_nb(:,7);
THDC = c_seg_case_3_nb(:,4);

CX = -seg_case_3_nb(:,6);
CY = seg_case_3_nb(:,5);

CCX = cos(THC);
CCY = sin(THC);

ERRX = XS - XC;
ERRY = YS - YC;

ERRTH = THS - THC;
ERRTHD = THDS - THDC;

ERRCX = CX - CCX;
ERRCY = CY - CCY;

Figure_1 = figure(1);
plot(T, D/d, 'k.', 'MarkerSize', 2); hold on;
plot(T, ERRX/d, 'r.', 'MarkerSize', 2);
plot(T, ERRY/d, 'b.', 'MarkerSize', 2); hold off;
grid on;
xlabel('Time (s)');
ylabel('m/m');
[h,icons] = legend('Distance deviation','X position deviation','Y position deviation','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway normalized linear errors: NB case 3');

Figure_2 = figure(2);
plot(T, ERRTH*w/d, 'k.', 'MarkerSize', 2);
grid on;
xlabel('Time (s)');
ylabel('rad.');
[h,icons] = legend('Angular deviation','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway normalized angular errors: NB case 3');

Figure_3 = figure(3);
plot(T, ERRTHD*w/d, 'k.', 'MarkerSize', 2);
grid on;
xlabel('Time (s)');
ylabel('$$s^{-1}$$');
[h,icons] = legend('Angular rate deviation','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway normalized angular rate errors: NB case 3');

Figure_4 = figure(4);
plot(T, ERRCX, 'r.', 'MarkerSize', 2); hold on;
plot(T, ERRCY, 'b.', 'MarkerSize', 2); hold off;
grid on;
xlabel('Time (s)');
[h,icons] = legend('X component deviation','Y component deviation','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway compass component errors: NB case 3');

l_f = 0.25;
w_r = 0.35;
XB = [0 10];
YB = [0 10];
[ d_f, d_r ] = lidar_calc(10 - c_seg_case_3_nb(:,2), c_seg_case_3_nb(:,1), c_seg_case_3_nb(:,3) + pi/2, l_f, w_r, XB, YB);

LIDF = seg_case_3_pk(:,3)*10/4096;
LIDR = seg_case_3_pk(:,4)*10/4096;

DF = d_f;
DR = d_r;

ERRDF = LIDF - DF;
ERRDR = LIDR - DR;

Figure_5 = figure(5);
plot(T, ERRDF/d, 'r.', 'MarkerSize', 2); hold on;
plot(T, ERRDR/d, 'b.', 'MarkerSize', 2); hold off;
grid on;
xlabel('Time (s)');
ylabel('m/m');
[h,icons] = legend('Front LIDAR deviation','Right LIDAR deviation','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway normalized distance sensor errors: NB case 3');

%% NB paperbot

% Case 1
Figure_1 = figure(1);
plot(p_case_1_nb(:,1) - p_case_1_nb(1,1), -p_case_1_nb(:,2) + p_case_1_nb(1,2), 'r.'); hold on;
plot(-c_p_case_1_nb(:,2) + c_p_case_1_nb(1,2), c_p_case_1_nb(:,1) - c_p_case_1_nb(1,1), 'k'); hold off;
grid on;
axis([-0.4 0.2 -0.3 0.3]);
axis square;
xlabel('X distance (m)');
ylabel('Y distance (m)');
[h,icons] = legend('Webots path','Analytical path','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot path comparison: NB case 1');

Figure_2 = figure(2);
plot(T, unwrap(atan2(p_case_1_nb(:,5),-p_case_1_nb(:,6))), 'r.'); hold on;
plot(T, c_p_case_1_nb(:,3) + pi/2, 'k'); hold off;
grid on;
xlabel('Time (s)');
ylabel('Angular displacement (rad.)');
[h,icons] = legend('Webots calculated $$\theta$$','Analytical $$\theta$$','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot angle comparison: NB case 1');

Figure_3 = figure(3);
plot(T, p_case_1_nb(:,7), 'r.'); hold on;
plot(T, c_p_case_1_nb(:,4), 'k'); hold off;
grid on;
xlabel('Time (s)');
ylabel('Angular rate (rad./s)');
[h,icons] = legend('Webots gyro readout','Analytical $$\dot{\theta}$$','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot angular rate comparison: NB case 1');

Figure_4 = figure(4);
plot(T, -p_case_1_nb(:,6), 'm.', 'MarkerSize', 2); hold on;
plot(T, p_case_1_nb(:,5), 'c.', 'MarkerSize', 2);
plot(T, sin(-c_p_case_1_nb(:,3)), 'r', 'LineWidth', 1);
plot(T, cos(c_p_case_1_nb(:,3)), 'b', 'LineWidth', 1); hold off;
grid on;
xlabel('Time (s)');
[h,icons] = legend('Webots compass X','Webots compass Y','Analytical $$\hat{x}$$','Analytical $$\hat{y}$$','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot compass comparison: NB case 1');

l_f = 0.025;
w_r = 0.045;
XB = [4.5 5.5];
YB = [4.5 5.5];
[ d_f, d_r ] = lidar_calc(10 - c_p_case_1_nb(:,2), c_p_case_1_nb(:,1), c_p_case_1_nb(:,3) + pi/2, l_f, w_r, XB, YB);

Figure_5 = figure(5);
plot(T, p_case_1_nb(:,3)*1/4096, 'm.', 'MarkerSize', 2); hold on;
plot(T, p_case_1_nb(:,4)*1/4096, 'c.', 'MarkerSize', 2);
plot(T, d_f, 'r', 'LineWidth', 1);
plot(T, d_r, 'b', 'LineWidth', 1); hold off;
grid on;
xlabel('Time (s)');
ylabel('Distance (m)');
[h,icons] = legend('Webots front LIDAR','Webots right LIDAR','Analytical $$d_f$$','Analytical $$d_r$$','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot LIDAR comparison: NB case 1');

% Case 2
Figure_6 = figure(6);
plot(p_case_2_nb(:,1) - p_case_2_nb(1,1), -p_case_2_nb(:,2) + p_case_2_nb(1,2), 'g.'); hold on;
plot(-c_p_case_2_nb(:,2) + c_p_case_2_nb(1,2), c_p_case_2_nb(:,1) - c_p_case_2_nb(1,1), 'k'); hold off;
grid on;
axis([-0.05 0.2 -0.05 0.2]);
axis square;
% axis([-1.75 1.75 -3 0.5]);
xlabel('X distance (m)');
ylabel('Y distance (m)');
[h,icons] = legend('Webots path','Analytical path','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot path comparison: NB case 2');

Figure_7 = figure(7);
plot(T, unwrap(atan2(p_case_2_nb(:,5),-p_case_2_nb(:,6))), 'g.'); hold on;
plot(T, c_p_case_2_nb(:,3) + pi/2, 'k'); hold off;
grid on;
xlabel('Time (s)');
ylabel('Angular displacement (rad.)');
[h,icons] = legend('Webots calculated $$\theta$$','Analytical $$\theta$$','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot angle comparison: NB case 2');

Figure_8 = figure(8);
plot(T, p_case_2_nb(:,7), 'g.'); hold on;
plot(T, c_p_case_2_nb(:,4), 'k'); hold off;
grid on;
xlabel('Time (s)');
ylabel('Angular rate (rad./s)');
[h,icons] = legend('Webots gyro readout','Analytical $$\dot{\theta}$$','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot angular rate comparison: NB case 2');

Figure_9 = figure(9);
plot(T, -p_case_2_nb(:,6), 'm.', 'MarkerSize', 2); hold on;
plot(T, p_case_2_nb(:,5), 'c.', 'MarkerSize', 2);
plot(T, sin(-c_p_case_2_nb(:,3)), 'r', 'LineWidth', 1);
plot(T, cos(c_p_case_2_nb(:,3)), 'b', 'LineWidth', 1); hold off;
grid on;
xlabel('Time (s)');
[h,icons] = legend('Webots compass X','Webots compass Y','Analytical $$\hat{x}$$','Analytical $$\hat{y}$$','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot compass comparison: NB case 2');

l_f = 0.025;
w_r = 0.045;
XB = [4.5 5.5];
YB = [4.5 5.5];
[ d_f, d_r ] = lidar_calc(10 - c_p_case_2_nb(:,2), c_p_case_2_nb(:,1), c_p_case_2_nb(:,3) + pi/2, l_f, w_r, XB, YB);

Figure_10 = figure(10);
plot(T, p_case_2_nb(:,3)*1/4096, 'm.', 'MarkerSize', 2); hold on;
plot(T, p_case_2_nb(:,4)*1/4096, 'c.', 'MarkerSize', 2);
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

% Case 3
Figure_11 = figure(11);
plot(p_case_3_nb(:,1) - p_case_3_nb(1,1), -p_case_3_nb(:,2) + p_case_3_nb(1,2), 'b.'); hold on;
plot(-c_p_case_3_nb(:,2) + c_p_case_3_nb(1,2), c_p_case_3_nb(:,1) - c_p_case_3_nb(1,1), 'k'); hold off;
grid on;
axis([-0.3 0.25 -0.1 0.45]);
axis square;
xlabel('X distance (m)');
ylabel('Y distance (m)');
[h,icons] = legend('Webots path','Analytical path','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot path comparison: NB case 3');

Figure_12 = figure(12);
plot(T, unwrap(atan2(p_case_3_nb(:,5),-p_case_3_nb(:,6))), 'b.'); hold on;
plot(T, c_p_case_3_nb(:,3) + pi/2, 'k'); hold off;
grid on;
xlabel('Time (s)');
ylabel('Angular displacement (rad.)');
[h,icons] = legend('Webots calculated $$\theta$$','Analytical $$\theta$$','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot angle comparison: NB case 3');

Figure_13 = figure(13);
plot(T, p_case_3_nb(:,7), 'b.'); hold on;
plot(T, c_p_case_3_nb(:,4), 'k'); hold off;
grid on;
xlabel('Time (s)');
ylabel('Angular rate (rad./s)');
[h,icons] = legend('Webots gyro readout','Analytical $$\dot{\theta}$$','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot angular rate comparison: NB case 3');

Figure_14 = figure(14);
plot(T, -p_case_3_nb(:,6), 'm.', 'MarkerSize', 2); hold on;
plot(T, p_case_3_nb(:,5), 'c.', 'MarkerSize', 2);
plot(T, sin(-c_p_case_3_nb(:,3)), 'r', 'LineWidth', 1);
plot(T, cos(c_p_case_3_nb(:,3)), 'b', 'LineWidth', 1); hold off;
grid on;
xlabel('Time (s)');
[h,icons] = legend('Webots compass X','Webots compass Y','Analytical $$\hat{x}$$','Analytical $$\hat{y}$$','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot compass comparison: NB case 3');

l_f = 0.025;
w_r = 0.045;
XB = [4.5 5.5];
YB = [4.5 5.5];
[ d_f, d_r ] = lidar_calc(10 - c_p_case_3_nb(:,2), c_p_case_3_nb(:,1), c_p_case_3_nb(:,3) + pi/2, l_f, w_r, XB, YB);

Figure_15 = figure(15);
plot(T, p_case_3_nb(:,3)*1/4096, 'm.', 'MarkerSize', 2); hold on;
plot(T, p_case_3_nb(:,4)*1/4096, 'c.', 'MarkerSize', 2);
plot(T, d_f, 'r', 'LineWidth', 1);
plot(T, d_r, 'b', 'LineWidth', 1); hold off;
grid on;
xlabel('Time (s)');
ylabel('Distance (m)');
[h,icons] = legend('Webots front LIDAR','Webots right LIDAR','Analytical $$d_f$$','Analytical $$d_r$$','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot LIDAR comparison: NB case 3');

%% Stats P NB 1

d = 0.05;
w = 0.09;

XS = p_case_1_nb(:,1) - p_case_1_nb(1,1);
YS = -p_case_1_nb(:,2) + p_case_1_nb(1,2);

XC = -c_p_case_1_nb(:,2) + c_p_case_1_nb(1,2);
YC = c_p_case_1_nb(:,1) - c_p_case_1_nb(1,1);

D = sqrt((XS - XC).^2 + (YS - YC).^2);

THS = unwrap(atan2(p_case_1_nb(:,5),-p_case_1_nb(:,6)));
THC = c_p_case_1_nb(:,3) + pi/2;

THDS = p_case_1_nb(:,7);
THDC = c_p_case_1_nb(:,4);

CX = -p_case_1_nb(:,6);
CY = p_case_1_nb(:,5);

CCX = cos(THC);
CCY = sin(THC);

ERRX = XS - XC;
ERRY = YS - YC;

ERRTH = THS - THC;
ERRTHD = THDS - THDC;

ERRCX = CX - CCX;
ERRCY = CY - CCY;

Figure_1 = figure(1);
plot(T, D/d, 'k.', 'MarkerSize', 2); hold on;
plot(T, ERRX/d, 'r.', 'MarkerSize', 2);
plot(T, ERRY/d, 'b.', 'MarkerSize', 2); hold off;
grid on;
xlabel('Time (s)');
ylabel('m/m');
[h,icons] = legend('Distance deviation','X position deviation','Y position deviation','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot normalized linear errors: NB case 1');

Figure_2 = figure(2);
plot(T, ERRTH*w/d, 'k.', 'MarkerSize', 2);
grid on;
xlabel('Time (s)');
ylabel('rad.');
[h,icons] = legend('Angular deviation','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot normalized angular errors: NB case 1');

Figure_3 = figure(3);
plot(T, ERRTHD*w/d, 'k.', 'MarkerSize', 2);
grid on;
xlabel('Time (s)');
ylabel('$$s^{-1}$$');
[h,icons] = legend('Angular rate deviation','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot normalized angular rate errors: NB case 1');

Figure_4 = figure(4);
plot(T, ERRCX, 'r.', 'MarkerSize', 2); hold on;
plot(T, ERRCY, 'b.', 'MarkerSize', 2); hold off;
grid on;
xlabel('Time (s)');
[h,icons] = legend('X component deviation','Y component deviation','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot compass component errors: NB case 1');

l_f = 0.025;
w_r = 0.045;
XB = [4.5 5.5];
YB = [4.5 5.5];
[ d_f, d_r ] = lidar_calc(10 - c_p_case_1_nb(:,2), c_p_case_1_nb(:,1), c_p_case_1_nb(:,3) + pi/2, l_f, w_r, XB, YB);

LIDF = p_case_1_nb(:,3)*1/4096;
LIDR = p_case_1_nb(:,4)*1/4096;

DF = d_f;
DR = d_r;

ERRDF = LIDF - DF;
ERRDR = LIDR - DR;

Figure_5 = figure(5);
plot(T, ERRDF/d, 'r.', 'MarkerSize', 2); hold on;
plot(T, ERRDR/d, 'b.', 'MarkerSize', 2); hold off;
grid on;
xlabel('Time (s)');
ylabel('m/m');
[h,icons] = legend('Front LIDAR deviation','Right LIDAR deviation','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot normalized distance sensor errors: NB case 1');

%% Stats P NB 2

d = 0.05;
w = 0.09;

XS = p_case_2_nb(:,1) - p_case_2_nb(1,1);
YS = -p_case_2_nb(:,2) + p_case_2_nb(1,2);

XC = -c_p_case_2_nb(:,2) + c_p_case_2_nb(1,2);
YC = c_p_case_2_nb(:,1) - c_p_case_2_nb(1,1);

D = sqrt((XS - XC).^2 + (YS - YC).^2);

THS = unwrap(atan2(p_case_2_nb(:,5),-p_case_2_nb(:,6)));
THC = c_p_case_2_nb(:,3) + pi/2;

THDS = p_case_2_nb(:,7);
THDC = c_p_case_2_nb(:,4);

CX = -p_case_2_nb(:,6);
CY = p_case_2_nb(:,5);

CCX = cos(THC);
CCY = sin(THC);

ERRX = XS - XC;
ERRY = YS - YC;

ERRTH = THS - THC;
ERRTHD = THDS - THDC;

ERRCX = CX - CCX;
ERRCY = CY - CCY;

Figure_1 = figure(1);
plot(T, D/d, 'k.', 'MarkerSize', 2); hold on;
plot(T, ERRX/d, 'r.', 'MarkerSize', 2);
plot(T, ERRY/d, 'b.', 'MarkerSize', 2); hold off;
grid on;
xlabel('Time (s)');
ylabel('m/m');
[h,icons] = legend('Distance deviation','X position deviation','Y position deviation','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot normalized linear errors: NB case 2');

Figure_2 = figure(2);
plot(T, ERRTH*w/d, 'k.', 'MarkerSize', 2);
grid on;
xlabel('Time (s)');
ylabel('rad.');
[h,icons] = legend('Angular deviation','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot normalized angular errors: NB case 2');

Figure_3 = figure(3);
plot(T, ERRTHD*w/d, 'k.', 'MarkerSize', 2);
grid on;
xlabel('Time (s)');
ylabel('$$s^{-1}$$');
[h,icons] = legend('Angular rate deviation','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot normalized angular rate errors: NB case 2');

Figure_4 = figure(4);
plot(T, ERRCX, 'r.', 'MarkerSize', 2); hold on;
plot(T, ERRCY, 'b.', 'MarkerSize', 2); hold off;
grid on;
xlabel('Time (s)');
[h,icons] = legend('X component deviation','Y component deviation','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot compass component errors: NB case 2');

l_f = 0.025;
w_r = 0.045;
XB = [4.5 5.5];
YB = [4.5 5.5];
[ d_f, d_r ] = lidar_calc(10 - c_p_case_2_nb(:,2), c_p_case_2_nb(:,1), c_p_case_2_nb(:,3) + pi/2, l_f, w_r, XB, YB);

LIDF = p_case_2_nb(:,3)*1/4096;
LIDR = p_case_2_nb(:,4)*1/4096;

DF = d_f;
DR = d_r;

ERRDF = LIDF - DF;
ERRDR = LIDR - DR;

Figure_5 = figure(5);
plot(T, ERRDF/d, 'r.', 'MarkerSize', 2); hold on;
plot(T, ERRDR/d, 'b.', 'MarkerSize', 2); hold off;
grid on;
xlabel('Time (s)');
ylabel('m/m');
[h,icons] = legend('Front LIDAR deviation','Right LIDAR deviation','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot normalized distance sensor errors: NB case 2');

%% Stats P NB 3

d = 0.05;
w = 0.09;

XS = p_case_3_nb(:,1) - p_case_3_nb(1,1);
YS = -p_case_3_nb(:,2) + p_case_3_nb(1,2);

XC = -c_p_case_3_nb(:,2) + c_p_case_3_nb(1,2);
YC = c_p_case_3_nb(:,1) - c_p_case_3_nb(1,1);

D = sqrt((XS - XC).^2 + (YS - YC).^2);

THS = unwrap(atan2(p_case_3_nb(:,5),-p_case_3_nb(:,6)));
THC = c_p_case_3_nb(:,3) + pi/2;

THDS = p_case_3_nb(:,7);
THDC = c_p_case_3_nb(:,4);

CX = -p_case_3_nb(:,6);
CY = p_case_3_nb(:,5);

CCX = cos(THC);
CCY = sin(THC);

ERRX = XS - XC;
ERRY = YS - YC;

ERRTH = THS - THC;
ERRTHD = THDS - THDC;

ERRCX = CX - CCX;
ERRCY = CY - CCY;

Figure_1 = figure(1);
plot(T, D/d, 'k.', 'MarkerSize', 2); hold on;
plot(T, ERRX/d, 'r.', 'MarkerSize', 2);
plot(T, ERRY/d, 'b.', 'MarkerSize', 2); hold off;
grid on;
xlabel('Time (s)');
ylabel('m/m');
[h,icons] = legend('Distance deviation','X position deviation','Y position deviation','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot normalized linear errors: NB case 3');

Figure_2 = figure(2);
plot(T, ERRTH*w/d, 'k.', 'MarkerSize', 2);
grid on;
xlabel('Time (s)');
ylabel('rad.');
[h,icons] = legend('Angular deviation','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot normalized angular errors: NB case 3');

Figure_3 = figure(3);
plot(T, ERRTHD*w/d, 'k.', 'MarkerSize', 2);
grid on;
xlabel('Time (s)');
ylabel('$$s^{-1}$$');
[h,icons] = legend('Angular rate deviation','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway normalized angular rate errors: NB case 3');

Figure_4 = figure(4);
plot(T, ERRCX, 'r.', 'MarkerSize', 2); hold on;
plot(T, ERRCY, 'b.', 'MarkerSize', 2); hold off;
grid on;
xlabel('Time (s)');
[h,icons] = legend('X component deviation','Y component deviation','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot compass component errors: NB case 3');

l_f = 0.025;
w_r = 0.045;
XB = [4.5 5.5];
YB = [4.5 5.5];
[ d_f, d_r ] = lidar_calc(10 - c_p_case_3_nb(:,2), c_p_case_3_nb(:,1), c_p_case_3_nb(:,3) + pi/2, l_f, w_r, XB, YB);

LIDF = p_case_3_nb(:,3)*1/4096;
LIDR = p_case_3_nb(:,4)*1/4096;

DF = d_f;
DR = d_r;

ERRDF = LIDF - DF;
ERRDR = LIDR - DR;

Figure_5 = figure(5);
plot(T, ERRDF/d, 'r.', 'MarkerSize', 2); hold on;
plot(T, ERRDR/d, 'b.', 'MarkerSize', 2); hold off;
grid on;
xlabel('Time (s)');
ylabel('m/m');
[h,icons] = legend('Front LIDAR deviation','Right LIDAR deviation','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot normalized distance sensor errors: NB case 3');

%% ZL segway

% Case 1
Figure_1 = figure(1);
plot(seg_case_1_zl(:,1) - seg_case_1_zl(1,1), -seg_case_1_zl(:,2) + seg_case_1_zl(1,2), 'r.', 'MarkerSize', 2); hold on;
plot(-c_seg_case_1_zl(:,2) + c_seg_case_1_zl(1,2), c_seg_case_1_zl(:,1) - c_seg_case_1_zl(1,1), 'k', 'LineWidth', 1); hold off;
grid on;
axis([-0.15 0.15 -0.1 0.2]);
axis square;
xlabel('X distance (m)');
ylabel('Y distance (m)');
[h,icons] = legend('Webots path','Analytical path','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway path comparison: ZL case 1');

Figure_2 = figure(2);
plot(T, unwrap(atan2(seg_case_1_zl(:,5),-seg_case_1_zl(:,6))), 'r.', 'MarkerSize', 2); hold on;
plot(T, c_seg_case_1_zl(:,3) + pi/2, 'k', 'LineWidth', 1); hold off;
grid on;
xlabel('Time (s)');
ylabel('Angular displacement (rad.)');
[h,icons] = legend('Webots calculated $$\theta$$','Analytical $$\theta$$','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway angle comparison: ZL case 1');

Figure_3 = figure(3);
plot(T, seg_case_1_zl(:,7), 'r.', 'MarkerSize', 2); hold on;
plot(T, c_seg_case_1_zl(:,4), 'k', 'LineWidth', 1); hold off;
grid on;
xlabel('Time (s)');
ylabel('Angular rate (rad./s)');
[h,icons] = legend('Webots gyro readout','Analytical $$\dot{\theta}$$','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway angular rate comparison: ZL case 1');

Figure_4 = figure(4);
plot(T, -seg_case_1_zl(:,6), 'm.', 'MarkerSize', 2); hold on;
plot(T, seg_case_1_zl(:,5), 'c.', 'MarkerSize', 2);
plot(T, sin(-c_seg_case_1_zl(:,3)), 'r', 'LineWidth', 1);
plot(T, cos(c_seg_case_1_zl(:,3)), 'b', 'LineWidth', 1); hold off;
grid on;
xlabel('Time (s)');
[h,icons] = legend('Webots compass X','Webots compass Y','Analytical $$\hat{x}$$','Analytical $$\hat{y}$$','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway compass comparison: ZL case 1');

l_f = 0.25;
w_r = 0.35;
XB = [0 10];
YB = [0 10];
[ d_f, d_r ] = lidar_calc(10 - c_seg_case_1_zl(:,2), c_seg_case_1_zl(:,1), c_seg_case_1_zl(:,3) + pi/2, l_f, w_r, XB, YB);

Figure_5 = figure(5);
plot(T, seg_case_1_zl(:,3)*10/4096, 'm.', 'MarkerSize', 2); hold on;
plot(T, seg_case_1_zl(:,4)*10/4096, 'c.', 'MarkerSize', 2);
plot(T, d_f, 'r', 'LineWidth', 1);
plot(T, d_r, 'b', 'LineWidth', 1); hold off;
grid on;
xlabel('Time (s)');
ylabel('Distance (m)');
[h,icons] = legend('Webots front LIDAR','Webots right LIDAR','Analytical $$d_f$$','Analytical $$d_r$$','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway LIDAR comparison: ZL case 1');

% Case 2
Figure_6 = figure(6);
plot(seg_case_2_zl(:,1) - seg_case_2_zl(1,1), -seg_case_2_zl(:,2) + seg_case_2_zl(1,2), 'g.', 'MarkerSize', 2); hold on;
plot(-c_seg_case_2_zl(:,2) + c_seg_case_2_zl(1,2), c_seg_case_2_zl(:,1) - c_seg_case_2_zl(1,1), 'k', 'LineWidth', 1); hold off;
grid on;
axis square;
axis([-4 1 -1 4]);
xlabel('X distance (m)');
ylabel('Y distance (m)');
[h,icons] = legend('Webots path','Analytical path','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway path comparison: ZL case 2');

Figure_7 = figure(7);
plot(T, unwrap(atan2(seg_case_2_zl(:,5),-seg_case_2_zl(:,6))), 'g.', 'MarkerSize', 2); hold on;
plot(T, c_seg_case_2_zl(:,3) + pi/2, 'k', 'LineWidth', 1); hold off;
grid on;
ylim([-9 2]);
xlabel('Time (s)');
ylabel('Angular displacement (rad.)');
[h,icons] = legend('Webots calculated $$\theta$$','Analytical $$\theta$$','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway angle comparison: ZL case 2');

Figure_8 = figure(8);
plot(T, seg_case_2_zl(:,7), 'g.', 'MarkerSize', 2); hold on;
plot(T, c_seg_case_2_zl(:,4), 'k', 'LineWidth', 1); hold off;
grid on;
xlabel('Time (s)');
ylabel('Angular rate (rad./s)');
[h,icons] = legend('Webots gyro readout','Analytical $$\dot{\theta}$$','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway angular rate comparison: ZL case 2');

Figure_9 = figure(9);
plot(T, -seg_case_2_zl(:,6), 'm.', 'MarkerSize', 2); hold on;
plot(T, seg_case_2_zl(:,5), 'c.', 'MarkerSize', 2);
plot(T, sin(-c_seg_case_2_zl(:,3)), 'r', 'LineWidth', 1);
plot(T, cos(c_seg_case_2_zl(:,3)), 'b', 'LineWidth', 1); hold off;
grid on;
xlabel('Time (s)');
[h,icons] = legend('Webots compass X','Webots compass Y','Analytical $$\hat{x}$$','Analytical $$\hat{y}$$','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway compass comparison: ZL case 2');

l_f = 0.25;
w_r = 0.35;
XB = [0 10];
YB = [0 10];
[ d_f, d_r ] = lidar_calc(10 - c_seg_case_2_zl(:,2), c_seg_case_2_zl(:,1), c_seg_case_2_zl(:,3) + pi/2, l_f, w_r, XB, YB);

Figure_10 = figure(10);
plot(T, seg_case_2_zl(:,3)*10/4096, 'm.', 'MarkerSize', 2); hold on;
plot(T, seg_case_2_zl(:,4)*10/4096, 'c.', 'MarkerSize', 2);
plot(T, d_f, 'r', 'LineWidth', 1);
plot(T, d_r, 'b', 'LineWidth', 1); hold off;
grid on;
xlabel('Time (s)');
ylabel('Distance (m)');
[h,icons] = legend('Webots front LIDAR','Webots right LIDAR','Analytical $$d_f$$','Analytical $$d_r$$','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway LIDAR comparison: ZL case 2');

% Case 3
Figure_11 = figure(11);
plot(seg_case_3_zl(:,1) - seg_case_3_zl(1,1), -seg_case_3_zl(:,2) + seg_case_3_zl(1,2), 'b.', 'MarkerSize', 2); hold on;
plot(-c_seg_case_3_zl(:,2) + c_seg_case_3_zl(1,2), c_seg_case_3_zl(:,1) - c_seg_case_3_zl(1,1), 'k', 'LineWidth', 1); hold off;
grid on;
axis([-3 3 -5.5 0.5]);
axis square;
xlabel('X distance (m)');
ylabel('Y distance (m)');
[h,icons] = legend('Webots path','Analytical path','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway path comparison: ZL case 3');

Figure_12 = figure(12);
plot(T, unwrap(atan2(seg_case_3_zl(:,5),-seg_case_3_zl(:,6))), 'b.', 'MarkerSize', 2); hold on;
plot(T, c_seg_case_3_zl(:,3) + pi/2, 'k', 'LineWidth', 1); hold off;
grid on;
xlabel('Time (s)');
ylabel('Angular displacement (rad.)');
[h,icons] = legend('Webots calculated $$\theta$$','Analytical $$\theta$$','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway angle comparison: ZL case 3');

Figure_13 = figure(13);
plot(T, seg_case_3_zl(:,7), 'b.', 'MarkerSize', 2); hold on;
plot(T, c_seg_case_3_zl(:,4), 'k', 'LineWidth', 1); hold off;
grid on;
xlabel('Time (s)');
ylabel('Angular rate (rad./s)');
[h,icons] = legend('Webots gyro readout','Analytical $$\dot{\theta}$$','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway angular rate comparison: ZL case 3');

Figure_14 = figure(14);
plot(T, -seg_case_3_zl(:,6), 'm.', 'MarkerSize', 2); hold on;
plot(T, seg_case_3_zl(:,5), 'c.', 'MarkerSize', 2);
plot(T, sin(-c_seg_case_3_zl(:,3)), 'r', 'LineWidth', 1);
plot(T, cos(c_seg_case_3_zl(:,3)), 'b', 'LineWidth', 1); hold off;
grid on;
xlabel('Time (s)');
[h,icons] = legend('Webots compass X','Webots compass Y','Analytical $$\hat{x}$$','Analytical $$\hat{y}$$','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway compass comparison: ZL case 3');

l_f = 0.25;
w_r = 0.35;
XB = [0 10];
YB = [0 10];
[ d_f, d_r ] = lidar_calc(10 - c_seg_case_3_zl(:,2), c_seg_case_3_zl(:,1), c_seg_case_3_zl(:,3) + pi/2, l_f, w_r, XB, YB);

Figure_15 = figure(15);
plot(T, seg_case_3_zl(:,3)*10/4096, 'm.', 'MarkerSize', 2); hold on;
plot(T, seg_case_3_zl(:,4)*10/4096, 'c.', 'MarkerSize', 2);
plot(T, d_f, 'r', 'LineWidth', 1);
plot(T, d_r, 'b', 'LineWidth', 1); hold off;
grid on;
xlabel('Time (s)');
ylabel('Distance (m)');
[h,icons] = legend('Webots front LIDAR','Webots right LIDAR','Analytical $$d_f$$','Analytical $$d_r$$','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway LIDAR comparison: ZL case 3');

%% Stats S ZL 1

d = 0.502;
w = 0.53;

XS = seg_case_1_zl(:,1) - seg_case_1_zl(1,1);
YS = -seg_case_1_zl(:,2) + seg_case_1_zl(1,2);

XC = -c_seg_case_1_zl(:,2) + c_seg_case_1_zl(1,2);
YC = c_seg_case_1_zl(:,1) - c_seg_case_1_zl(1,1);

D = sqrt((XS - XC).^2 + (YS - YC).^2);

THS = unwrap(atan2(seg_case_1_zl(:,5),-seg_case_1_zl(:,6)));
THC = c_seg_case_1_zl(:,3) + pi/2;

THDS = seg_case_1_zl(:,7);
THDC = c_seg_case_1_zl(:,4);

CX = -seg_case_1_zl(:,6);
CY = seg_case_1_zl(:,5);

CCX = cos(THC);
CCY = sin(THC);

ERRX = XS - XC;
ERRY = YS - YC;

ERRTH = THS - THC;
ERRTHD = THDS - THDC;

ERRCX = CX - CCX;
ERRCY = CY - CCY;

Figure_1 = figure(1);
plot(T, D/d, 'k.', 'MarkerSize', 2); hold on;
plot(T, ERRX/d, 'r.', 'MarkerSize', 2);
plot(T, ERRY/d, 'b.', 'MarkerSize', 2); hold off;
grid on;
xlabel('Time (s)');
ylabel('m/m');
[h,icons] = legend('Distance deviation','X position deviation','Y position deviation','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway normalized linear errors: ZL case 1');

Figure_2 = figure(2);
plot(T, ERRTH*w/d, 'k.', 'MarkerSize', 2);
grid on;
xlabel('Time (s)');
ylabel('rad.');
[h,icons] = legend('Angular deviation','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway normalized angular errors: ZL case 1');

Figure_3 = figure(3);
plot(T, ERRTHD*w/d, 'k.', 'MarkerSize', 2);
grid on;
xlabel('Time (s)');
ylabel('$$s^{-1}$$');
[h,icons] = legend('Angular rate deviation','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway normalized angular rate errors: ZL case 1');

Figure_4 = figure(4);
plot(T, ERRCX, 'r.', 'MarkerSize', 2); hold on;
plot(T, ERRCY, 'b.', 'MarkerSize', 2); hold off;
grid on;
xlabel('Time (s)');
[h,icons] = legend('X component deviation','Y component deviation','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway compass component errors: ZL case 1');

l_f = 0.25;
w_r = 0.35;
XB = [0 10];
YB = [0 10];
[ d_f, d_r ] = lidar_calc(10 - c_seg_case_1_zl(:,2), c_seg_case_1_zl(:,1), c_seg_case_1_zl(:,3) + pi/2, l_f, w_r, XB, YB);

LIDF = seg_case_1_zl(:,3)*10/4096;
LIDR = seg_case_1_zl(:,4)*10/4096;

DF = d_f;
DR = d_r;

ERRDF = LIDF - DF;
ERRDR = LIDR - DR;

Figure_5 = figure(5);
plot(T, ERRDF/d, 'r.', 'MarkerSize', 2); hold on;
plot(T, ERRDR/d, 'b.', 'MarkerSize', 2); hold off;
grid on;
xlabel('Time (s)');
ylabel('m/m');
[h,icons] = legend('Front LIDAR deviation','Right LIDAR deviation','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway normalized distance sensor errors: ZL case 1');

%% Stats S ZL 2

d = 0.502;
w = 0.53;

XS = seg_case_2_zl(:,1) - seg_case_2_zl(1,1);
YS = -seg_case_2_zl(:,2) + seg_case_2_zl(1,2);

XC = -c_seg_case_2_zl(:,2) + c_seg_case_2_zl(1,2);
YC = c_seg_case_2_zl(:,1) - c_seg_case_2_zl(1,1);

D = sqrt((XS - XC).^2 + (YS - YC).^2);

THS = unwrap(atan2(seg_case_2_zl(:,5),-seg_case_2_zl(:,6)));
THC = c_seg_case_2_zl(:,3) + pi/2;

THDS = seg_case_2_zl(:,7);
THDC = c_seg_case_2_zl(:,4);

CX = -seg_case_2_zl(:,6);
CY = seg_case_2_zl(:,5);

CCX = cos(THC);
CCY = sin(THC);

ERRX = XS - XC;
ERRY = YS - YC;

ERRTH = THS - THC;
ERRTHD = THDS - THDC;

ERRCX = CX - CCX;
ERRCY = CY - CCY;

Figure_1 = figure(1);
plot(T, D/d, 'k.', 'MarkerSize', 2); hold on;
plot(T, ERRX/d, 'r.', 'MarkerSize', 2);
plot(T, ERRY/d, 'b.', 'MarkerSize', 2); hold off;
grid on;
xlabel('Time (s)');
ylabel('m/m');
[h,icons] = legend('Distance deviation','X position deviation','Y position deviation','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway normalized linear errors: ZL case 2');

Figure_2 = figure(2);
plot(T, ERRTH*w/d, 'k.', 'MarkerSize', 2);
grid on;
xlabel('Time (s)');
ylabel('rad.');
[h,icons] = legend('Angular deviation','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway normalized angular errors: ZL case 2');

Figure_3 = figure(3);
plot(T, ERRTHD*w/d, 'k.', 'MarkerSize', 2);
grid on;
xlabel('Time (s)');
ylabel('$$s^{-1}$$');
[h,icons] = legend('Angular rate deviation','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway normalized angular rate errors: ZL case 2');

Figure_4 = figure(4);
plot(T, ERRCX, 'r.', 'MarkerSize', 2); hold on;
plot(T, ERRCY, 'b.', 'MarkerSize', 2); hold off;
grid on;
xlabel('Time (s)');
[h,icons] = legend('X component deviation','Y component deviation','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway compass component errors: ZL case 2');

l_f = 0.25;
w_r = 0.35;
XB = [0 10];
YB = [0 10];
[ d_f, d_r ] = lidar_calc(10 - c_seg_case_2_zl(:,2), c_seg_case_2_zl(:,1), c_seg_case_2_zl(:,3) + pi/2, l_f, w_r, XB, YB);

LIDF = seg_case_2_zl(:,3)*10/4096;
LIDR = seg_case_2_zl(:,4)*10/4096;

DF = d_f;
DR = d_r;

ERRDF = LIDF - DF;
ERRDR = LIDR - DR;

Figure_5 = figure(5);
plot(T, ERRDF/d, 'r.', 'MarkerSize', 2); hold on;
plot(T, ERRDR/d, 'b.', 'MarkerSize', 2); hold off;
grid on;
xlabel('Time (s)');
ylabel('m/m');
[h,icons] = legend('Front LIDAR deviation','Right LIDAR deviation','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway normalized distance sensor errors: ZL case 2');

%% Stats S ZL 3

d = 0.502;
w = 0.53;

XS = seg_case_3_zl(:,1) - seg_case_3_zl(1,1);
YS = -seg_case_3_zl(:,2) + seg_case_3_zl(1,2);

XC = -c_seg_case_3_zl(:,2) + c_seg_case_3_zl(1,2);
YC = c_seg_case_3_zl(:,1) - c_seg_case_3_zl(1,1);

D = sqrt((XS - XC).^2 + (YS - YC).^2);

THS = unwrap(atan2(seg_case_3_zl(:,5),-seg_case_3_zl(:,6)));
THC = c_seg_case_3_zl(:,3) + pi/2;

THDS = seg_case_3_zl(:,7);
THDC = c_seg_case_3_zl(:,4);

CX = -seg_case_3_zl(:,6);
CY = seg_case_3_zl(:,5);

CCX = cos(THC);
CCY = sin(THC);

ERRX = XS - XC;
ERRY = YS - YC;

ERRTH = THS - THC;
ERRTHD = THDS - THDC;

ERRCX = CX - CCX;
ERRCY = CY - CCY;

Figure_1 = figure(1);
plot(T, D/d, 'k.', 'MarkerSize', 2); hold on;
plot(T, ERRX/d, 'r.', 'MarkerSize', 2);
plot(T, ERRY/d, 'b.', 'MarkerSize', 2); hold off;
grid on;
xlabel('Time (s)');
ylabel('m/m');
[h,icons] = legend('Distance deviation','X position deviation','Y position deviation','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway normalized linear errors: ZL case 3');

Figure_2 = figure(2);
plot(T, ERRTH*w/d, 'k.', 'MarkerSize', 2);
grid on;
xlabel('Time (s)');
ylabel('rad.');
[h,icons] = legend('Angular deviation','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway normalized angular errors: ZL case 3');

Figure_3 = figure(3);
plot(T, ERRTHD*w/d, 'k.', 'MarkerSize', 2);
grid on;
xlabel('Time (s)');
ylabel('$$s^{-1}$$');
[h,icons] = legend('Angular rate deviation','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway normalized angular rate errors: ZL case 3');

Figure_4 = figure(4);
plot(T, ERRCX, 'r.', 'MarkerSize', 2); hold on;
plot(T, ERRCY, 'b.', 'MarkerSize', 2); hold off;
grid on;
xlabel('Time (s)');
[h,icons] = legend('X component deviation','Y component deviation','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway compass component errors: ZL case 3');

l_f = 0.25;
w_r = 0.35;
XB = [0 10];
YB = [0 10];
[ d_f, d_r ] = lidar_calc(10 - c_seg_case_3_zl(:,2), c_seg_case_3_zl(:,1), c_seg_case_3_zl(:,3) + pi/2, l_f, w_r, XB, YB);

LIDF = seg_case_3_zl(:,3)*10/4096;
LIDR = seg_case_3_zl(:,4)*10/4096;

DF = d_f;
DR = d_r;

ERRDF = LIDF - DF;
ERRDR = LIDR - DR;

Figure_5 = figure(5);
plot(T, ERRDF/d, 'r.', 'MarkerSize', 2); hold on;
plot(T, ERRDR/d, 'b.', 'MarkerSize', 2); hold off;
grid on;
ylim([-10 10]);
xlabel('Time (s)');
ylabel('m/m');
[h,icons] = legend('Front LIDAR deviation','Right LIDAR deviation','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway normalized distance sensor errors: ZL case 3');

%% ZL paperbot

% Case 1
Figure_1 = figure(1);
plot(p_case_1_zl(:,1) - p_case_1_zl(1,1), -p_case_1_zl(:,2) + p_case_1_zl(1,2), 'r.', 'MarkerSize', 2); hold on;
plot(-c_p_case_1_zl(:,2) + c_p_case_1_zl(1,2), c_p_case_1_zl(:,1) - c_p_case_1_zl(1,1), 'k', 'LineWidth', 1); hold off;
grid on;
axis([-0.025 0.01 -0.02 0.015]);
axis square;
xlabel('X distance (m)');
ylabel('Y distance (m)');
[h,icons] = legend('Webots path','Analytical path','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot path comparison: ZL case 1');

Figure_2 = figure(2);
plot(T, unwrap(atan2(p_case_1_zl(:,5),-p_case_1_zl(:,6))), 'r.', 'MarkerSize', 2); hold on;
plot(T, c_p_case_1_zl(:,3) + pi/2, 'k', 'LineWidth', 1); hold off;
grid on;
xlabel('Time (s)');
ylabel('Angular displacement (rad.)');
[h,icons] = legend('Webots calculated $$\theta$$','Analytical $$\theta$$','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot angle comparison: ZL case 1');

Figure_3 = figure(3);
plot(T, p_case_1_zl(:,7), 'r.', 'MarkerSize', 2); hold on;
plot(T, c_p_case_1_zl(:,4), 'k', 'LineWidth', 1); hold off;
grid on;
xlabel('Time (s)');
ylabel('Angular rate (rad./s)');
[h,icons] = legend('Webots gyro readout','Analytical $$\dot{\theta}$$','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot angular rate comparison: ZL case 1');

Figure_4 = figure(4);
plot(T, -p_case_1_zl(:,6), 'm.', 'MarkerSize', 2); hold on;
plot(T, p_case_1_zl(:,5), 'c.', 'MarkerSize', 2);
plot(T, sin(-c_p_case_1_zl(:,3)), 'r', 'LineWidth', 1);
plot(T, cos(c_p_case_1_zl(:,3)), 'b', 'LineWidth', 1); hold off;
grid on;
xlabel('Time (s)');
[h,icons] = legend('Webots compass X','Webots compass Y','Analytical $$\hat{x}$$','Analytical $$\hat{y}$$','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot compass comparison: ZL case 1');

l_f = 0.025;
w_r = 0.045;
XB = [4.5 5.5];
YB = [4.5 5.5];
[ d_f, d_r ] = lidar_calc(10 - c_p_case_1_zl(:,2), c_p_case_1_zl(:,1), c_p_case_1_zl(:,3) + pi/2, l_f, w_r, XB, YB);

Figure_5 = figure(5);
plot(T, p_case_1_zl(:,3)*1/4096, 'm.', 'MarkerSize', 2); hold on;
plot(T, p_case_1_zl(:,4)*1/4096, 'c.', 'MarkerSize', 2);
plot(T, d_f, 'r', 'LineWidth', 1);
plot(T, d_r, 'b', 'LineWidth', 1); hold off;
grid on;
xlabel('Time (s)');
ylabel('Distance (m)');
[h,icons] = legend('Webots front LIDAR','Webots right LIDAR','Analytical $$d_f$$','Analytical $$d_r$$','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot LIDAR comparison: ZL case 1');

% Case 2
Figure_6 = figure(6);
plot(p_case_2_zl(:,1) - p_case_2_zl(1,1), -p_case_2_zl(:,2) + p_case_2_zl(1,2), 'g.', 'MarkerSize', 2); hold on;
plot(-c_p_case_2_zl(:,2) + c_p_case_2_zl(1,2), c_p_case_2_zl(:,1) - c_p_case_2_zl(1,1), 'k', 'LineWidth', 1); hold off;
grid on;
axis([-0.1 0.4 -0.4 0.1]);
axis square;
xlabel('X distance (m)');
ylabel('Y distance (m)');
[h,icons] = legend('Webots path','Analytical path','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot path comparison: ZL case 2');

Figure_7 = figure(7);
plot(T, unwrap(atan2(p_case_2_zl(:,5),-p_case_2_zl(:,6))), 'g.', 'MarkerSize', 2); hold on;
plot(T, c_p_case_2_zl(:,3) + pi/2, 'k', 'LineWidth', 1); hold off;
grid on;
xlabel('Time (s)');
ylabel('Angular displacement (rad.)');
[h,icons] = legend('Webots calculated $$\theta$$','Analytical $$\theta$$','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot angle comparison: ZL case 2');

Figure_8 = figure(8);
plot(T, p_case_2_zl(:,7), 'g.', 'MarkerSize', 2); hold on;
plot(T, c_p_case_2_zl(:,4), 'k', 'LineWidth', 1); hold off;
grid on;
xlabel('Time (s)');
ylabel('Angular rate (rad./s)');
[h,icons] = legend('Webots gyro readout','Analytical $$\dot{\theta}$$','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot angular rate comparison: ZL case 2');

Figure_9 = figure(9);
plot(T, -p_case_2_zl(:,6), 'm.', 'MarkerSize', 2); hold on;
plot(T, p_case_2_zl(:,5), 'c.', 'MarkerSize', 2);
plot(T, sin(-c_p_case_2_zl(:,3)), 'r', 'LineWidth', 1);
plot(T, cos(c_p_case_2_zl(:,3)), 'b', 'LineWidth', 1); hold off;
grid on;
xlabel('Time (s)');
[h,icons] = legend('Webots compass X','Webots compass Y','Analytical $$\hat{x}$$','Analytical $$\hat{y}$$','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot compass comparison: ZL case 2');

l_f = 0.025;
w_r = 0.045;
XB = [4.5 5.5];
YB = [4.5 5.5];
[ d_f, d_r ] = lidar_calc(10 - c_p_case_2_zl(:,2), c_p_case_2_zl(:,1), c_p_case_2_zl(:,3) + pi/2, l_f, w_r, XB, YB);

Figure_10 = figure(10);
plot(T, p_case_2_zl(:,3)*1/4096, 'm.', 'MarkerSize', 2); hold on;
plot(T, p_case_2_zl(:,4)*1/4096, 'c.', 'MarkerSize', 2);
plot(T, d_f, 'r', 'LineWidth', 1);
plot(T, d_r, 'b', 'LineWidth', 1); hold off;
grid on;
xlabel('Time (s)');
ylabel('Distance (m)');
[h,icons] = legend('Webots front LIDAR','Webots right LIDAR','Analytical $$d_f$$','Analytical $$d_r$$','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot LIDAR comparison: ZL case 2');

% Case 3
Figure_11 = figure(11);
plot(p_case_3_zl(:,1) - p_case_3_zl(1,1), -p_case_3_zl(:,2) + p_case_3_zl(1,2), 'b.', 'MarkerSize', 2); hold on;
plot(-c_p_case_3_zl(:,2) + c_p_case_3_zl(1,2), c_p_case_3_zl(:,1) - c_p_case_3_zl(1,1), 'k', 'LineWidth', 1); hold off;
grid on;
axis([-0.3 0.25 -0.5 0.05]);
axis square;
xlabel('X distance (m)');
ylabel('Y distance (m)');
[h,icons] = legend('Webots path','Analytical path','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot path comparison: ZL case 3');

Figure_12 = figure(12);
plot(T, unwrap(atan2(p_case_3_zl(:,5),-p_case_3_zl(:,6))), 'b.', 'MarkerSize', 2); hold on;
plot(T, c_p_case_3_zl(:,3) + pi/2, 'k', 'LineWidth', 1); hold off;
grid on;
xlabel('Time (s)');
ylabel('Angular displacement (rad.)');
[h,icons] = legend('Webots calculated $$\theta$$','Analytical $$\theta$$','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot angle comparison: ZL case 3');

Figure_13 = figure(13);
plot(T, p_case_3_zl(:,7), 'b.', 'MarkerSize', 2); hold on;
plot(T, c_p_case_3_zl(:,4), 'k', 'LineWidth', 1); hold off;
grid on;
xlabel('Time (s)');
ylabel('Angular rate (rad./s)');
[h,icons] = legend('Webots gyro readout','Analytical $$\dot{\theta}$$','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot angular rate comparison: ZL case 3');

Figure_14 = figure(14);
plot(T, -p_case_3_zl(:,6), 'm.', 'MarkerSize', 2); hold on;
plot(T, p_case_3_zl(:,5), 'c.', 'MarkerSize', 2);
plot(T, sin(-c_p_case_3_zl(:,3)), 'r', 'LineWidth', 1);
plot(T, cos(c_p_case_3_zl(:,3)), 'b', 'LineWidth', 1); hold off;
grid on;
xlabel('Time (s)');
[h,icons] = legend('Webots compass X','Webots compass Y','Analytical $$\hat{x}$$','Analytical $$\hat{y}$$','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot compass comparison: ZL case 3');

l_f = 0.025;
w_r = 0.045;
XB = [4.5 5.5];
YB = [4.5 5.5];
[ d_f, d_r ] = lidar_calc(10 - c_p_case_3_zl(:,2), c_p_case_3_zl(:,1), c_p_case_3_zl(:,3) + pi/2, l_f, w_r, XB, YB);

Figure_15 = figure(15);
plot(T, p_case_3_zl(:,3)*1/4096, 'm.', 'MarkerSize', 2); hold on;
plot(T, p_case_3_zl(:,4)*1/4096, 'c.', 'MarkerSize', 2);
plot(T, d_f, 'r', 'LineWidth', 1);
plot(T, d_r, 'b', 'LineWidth', 1); hold off;
grid on;
xlabel('Time (s)');
ylabel('Distance (m)');
[h,icons] = legend('Webots front LIDAR','Webots right LIDAR','Analytical $$d_f$$','Analytical $$d_r$$','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot LIDAR comparison: ZL case 3');

%% Stats P ZL 1

d = 0.05;
w = 0.09;

XS = p_case_1_zl(:,1) - p_case_1_zl(1,1);
YS = -p_case_1_zl(:,2) + p_case_1_zl(1,2);

XC = -c_p_case_1_zl(:,2) + c_p_case_1_zl(1,2);
YC = c_p_case_1_zl(:,1) - c_p_case_1_zl(1,1);

D = sqrt((XS - XC).^2 + (YS - YC).^2);

THS = unwrap(atan2(p_case_1_zl(:,5),-p_case_1_zl(:,6)));
THC = c_p_case_1_zl(:,3) + pi/2;

THDS = p_case_1_zl(:,7);
THDC = c_p_case_1_zl(:,4);

CX = -p_case_1_zl(:,6);
CY = p_case_1_zl(:,5);

CCX = cos(THC);
CCY = sin(THC);

ERRX = XS - XC;
ERRY = YS - YC;

ERRTH = THS - THC;
ERRTHD = THDS - THDC;

ERRCX = CX - CCX;
ERRCY = CY - CCY;

Figure_1 = figure(1);
plot(T, D/d, 'k.', 'MarkerSize', 2); hold on;
plot(T, ERRX/d, 'r.', 'MarkerSize', 2);
plot(T, ERRY/d, 'b.', 'MarkerSize', 2); hold off;
grid on;
xlabel('Time (s)');
ylabel('m/m');
[h,icons] = legend('Distance deviation','X position deviation','Y position deviation','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot normalized linear errors: ZL case 1');

Figure_2 = figure(2);
plot(T, ERRTH*w/d, 'k.', 'MarkerSize', 2);
grid on;
xlabel('Time (s)');
ylabel('rad.');
[h,icons] = legend('Angular deviation','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot normalized angular errors: ZL case 1');

Figure_3 = figure(3);
plot(T, ERRTHD*w/d, 'k.', 'MarkerSize', 2);
grid on;
xlabel('Time (s)');
ylabel('$$s^{-1}$$');
[h,icons] = legend('Angular rate deviation','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot normalized angular rate errors: ZL case 1');

Figure_4 = figure(4);
plot(T, ERRCX, 'r.', 'MarkerSize', 2); hold on;
plot(T, ERRCY, 'b.', 'MarkerSize', 2); hold off;
grid on;
xlabel('Time (s)');
[h,icons] = legend('X component deviation','Y component deviation','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot compass component errors: ZL case 1');

l_f = 0.025;
w_r = 0.045;
XB = [4.5 5.5];
YB = [4.5 5.5];
[ d_f, d_r ] = lidar_calc(10 - c_p_case_1_zl(:,2), c_p_case_1_zl(:,1), c_p_case_1_zl(:,3) + pi/2, l_f, w_r, XB, YB);

LIDF = p_case_1_zl(:,3)*1/4096;
LIDR = p_case_1_zl(:,4)*1/4096;

DF = d_f;
DR = d_r;

ERRDF = LIDF - DF;
ERRDR = LIDR - DR;

Figure_5 = figure(5);
plot(T, ERRDF/d, 'r.', 'MarkerSize', 2); hold on;
plot(T, ERRDR/d, 'b.', 'MarkerSize', 2); hold off;
grid on;
xlabel('Time (s)');
ylabel('m/m');
[h,icons] = legend('Front LIDAR deviation','Right LIDAR deviation','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot normalized distance sensor errors: ZL case 1');

%% Stats P ZL 2

d = 0.05;
w = 0.09;

XS = p_case_2_zl(:,1) - p_case_2_zl(1,1);
YS = -p_case_2_zl(:,2) + p_case_2_zl(1,2);

XC = -c_p_case_2_zl(:,2) + c_p_case_2_zl(1,2);
YC = c_p_case_2_zl(:,1) - c_p_case_2_zl(1,1);

D = sqrt((XS - XC).^2 + (YS - YC).^2);

THS = unwrap(atan2(p_case_2_zl(:,5),-p_case_2_zl(:,6)));
THC = c_p_case_2_zl(:,3) + pi/2;

THDS = p_case_2_zl(:,7);
THDC = c_p_case_2_zl(:,4);

CX = -p_case_2_zl(:,6);
CY = p_case_2_zl(:,5);

CCX = cos(THC);
CCY = sin(THC);

ERRX = XS - XC;
ERRY = YS - YC;

ERRTH = THS - THC;
ERRTHD = THDS - THDC;

ERRCX = CX - CCX;
ERRCY = CY - CCY;

Figure_1 = figure(1);
plot(T, D/d, 'k.', 'MarkerSize', 2); hold on;
plot(T, ERRX/d, 'r.', 'MarkerSize', 2);
plot(T, ERRY/d, 'b.', 'MarkerSize', 2); hold off;
grid on;
xlabel('Time (s)');
ylabel('m/m');
[h,icons] = legend('Distance deviation','X position deviation','Y position deviation','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot normalized linear errors: ZL case 2');

Figure_2 = figure(2);
plot(T, ERRTH*w/d, 'k.', 'MarkerSize', 2);
grid on;
xlabel('Time (s)');
ylabel('rad.');
[h,icons] = legend('Angular deviation','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot normalized angular errors: ZL case 2');

Figure_3 = figure(3);
plot(T, ERRTHD*w/d, 'k.', 'MarkerSize', 2);
grid on;
xlabel('Time (s)');
ylabel('$$s^{-1}$$');
[h,icons] = legend('Angular rate deviation','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot normalized angular rate errors: ZL case 2');

Figure_4 = figure(4);
plot(T, ERRCX, 'r.', 'MarkerSize', 2); hold on;
plot(T, ERRCY, 'b.', 'MarkerSize', 2); hold off;
grid on;
xlabel('Time (s)');
[h,icons] = legend('X component deviation','Y component deviation','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot compass component errors: ZL case 2');

l_f = 0.025;
w_r = 0.045;
XB = [4.5 5.5];
YB = [4.5 5.5];
[ d_f, d_r ] = lidar_calc(10 - c_p_case_2_zl(:,2), c_p_case_2_zl(:,1), c_p_case_2_zl(:,3) + pi/2, l_f, w_r, XB, YB);

LIDF = p_case_2_zl(:,3)*1/4096;
LIDR = p_case_2_zl(:,4)*1/4096;

DF = d_f;
DR = d_r;

ERRDF = LIDF - DF;
ERRDR = LIDR - DR;

Figure_5 = figure(5);
plot(T, ERRDF/d, 'r.', 'MarkerSize', 2); hold on;
plot(T, ERRDR/d, 'b.', 'MarkerSize', 2); hold off;
grid on;
xlabel('Time (s)');
ylabel('m/m');
[h,icons] = legend('Front LIDAR deviation','Right LIDAR deviation','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot normalized distance sensor errors: ZL case 2');

%% Stats P ZL 3

d = 0.05;
w = 0.09;

XS = p_case_3_zl(:,1) - p_case_3_zl(1,1);
YS = -p_case_3_zl(:,2) + p_case_3_zl(1,2);

XC = -c_p_case_3_zl(:,2) + c_p_case_3_zl(1,2);
YC = c_p_case_3_zl(:,1) - c_p_case_3_zl(1,1);

D = sqrt((XS - XC).^2 + (YS - YC).^2);

THS = unwrap(atan2(p_case_3_zl(:,5),-p_case_3_zl(:,6)));
THC = c_p_case_3_zl(:,3) + pi/2;

THDS = p_case_3_zl(:,7);
THDC = c_p_case_3_zl(:,4);

CX = -p_case_3_zl(:,6);
CY = p_case_3_zl(:,5);

CCX = cos(THC);
CCY = sin(THC);

ERRX = XS - XC;
ERRY = YS - YC;

ERRTH = THS - THC;
ERRTHD = THDS - THDC;

ERRCX = CX - CCX;
ERRCY = CY - CCY;

Figure_1 = figure(1);
plot(T, D/d, 'k.', 'MarkerSize', 2); hold on;
plot(T, ERRX/d, 'r.', 'MarkerSize', 2);
plot(T, ERRY/d, 'b.', 'MarkerSize', 2); hold off;
grid on;
xlabel('Time (s)');
ylabel('m/m');
[h,icons] = legend('Distance deviation','X position deviation','Y position deviation','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot normalized linear errors: ZL case 3');

Figure_2 = figure(2);
plot(T, ERRTH*w/d, 'k.', 'MarkerSize', 2);
grid on;
xlabel('Time (s)');
ylabel('rad.');
[h,icons] = legend('Angular deviation','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot normalized angular errors: ZL case 3');

Figure_3 = figure(3);
plot(T, ERRTHD*w/d, 'k.', 'MarkerSize', 2);
grid on;
xlabel('Time (s)');
ylabel('$$s^{-1}$$');
[h,icons] = legend('Angular rate deviation','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot normalized angular rate errors: ZL case 3');

Figure_4 = figure(4);
plot(T, ERRCX, 'r.', 'MarkerSize', 2); hold on;
plot(T, ERRCY, 'b.', 'MarkerSize', 2); hold off;
grid on;
xlabel('Time (s)');
[h,icons] = legend('X component deviation','Y component deviation','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot compass component errors: ZL case 3');

l_f = 0.025;
w_r = 0.045;
XB = [4.5 5.5];
YB = [4.5 5.5];
[ d_f, d_r ] = lidar_calc(10 - c_p_case_3_zl(:,2), c_p_case_3_zl(:,1), c_p_case_3_zl(:,3) + pi/2, l_f, w_r, XB, YB);

LIDF = p_case_3_zl(:,3)*1/4096;
LIDR = p_case_3_zl(:,4)*1/4096;

DF = d_f;
DR = d_r;

ERRDF = LIDF - DF;
ERRDR = LIDR - DR;

Figure_5 = figure(5);
plot(T, ERRDF/d, 'r.', 'MarkerSize', 2); hold on;
plot(T, ERRDR/d, 'b.', 'MarkerSize', 2); hold off;
grid on;
xlabel('Time (s)');
ylabel('m/m');
[h,icons] = legend('Front LIDAR deviation','Right LIDAR deviation','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot normalized distance sensor errors: ZL case 3');

%% NC segway

% Case 1
Figure_1 = figure(1);
plot(seg_case_1_nc(:,1) - seg_case_1_nc(1,1), -seg_case_1_nc(:,2) + seg_case_1_nc(1,2), 'r.', 'MarkerSize', 2); hold on;
plot(-c_seg_case_1_nc(:,2) + c_seg_case_1_nc(1,2), c_seg_case_1_nc(:,1) - c_seg_case_1_nc(1,1), 'k', 'LineWidth', 1); hold off;
grid on;
axis([-2 0.5, -1.25 1.25]);
axis square;
xlabel('X distance (m)');
ylabel('Y distance (m)');
[h,icons] = legend('Webots path','Analytical path','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway path comparison: NC case 1');

Figure_2 = figure(2);
plot(T, unwrap(atan2(seg_case_1_nc(:,5),-seg_case_1_nc(:,6))), 'r.', 'MarkerSize', 2); hold on;
plot(T, c_seg_case_1_nc(:,3) + pi/2, 'k', 'LineWidth', 1); hold off;
grid on;
xlabel('Time (s)');
ylabel('Angular displacement (rad.)');
[h,icons] = legend('Webots calculated $$\theta$$','Analytical $$\theta$$','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway angle comparison: NC case 1');

Figure_3 = figure(3);
plot(T, seg_case_1_nc(:,7), 'r.', 'MarkerSize', 2); hold on;
plot(T, c_seg_case_1_nc(:,4), 'k', 'LineWidth', 1); hold off;
grid on;
xlabel('Time (s)');
ylabel('Angular rate (rad./s)');
[h,icons] = legend('Webots gyro readout','Analytical $$\dot{\theta}$$','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway angular rate comparison: NC case 1');

Figure_4 = figure(4);
plot(T, -seg_case_1_nc(:,6), 'm.', 'MarkerSize', 2); hold on;
plot(T, seg_case_1_nc(:,5), 'c.', 'MarkerSize', 2);
plot(T, sin(-c_seg_case_1_nc(:,3)), 'r', 'LineWidth', 1);
plot(T, cos(c_seg_case_1_nc(:,3)), 'b', 'LineWidth', 1); hold off;
grid on;
xlabel('Time (s)');
[h,icons] = legend('Webots compass X','Webots compass Y','Analytical $$\hat{x}$$','Analytical $$\hat{y}$$','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway compass comparison: NC case 1');

l_f = 0.25;
w_r = 0.35;
XB = [0 10];
YB = [0 10];
[ d_f, d_r ] = lidar_calc(10 - c_seg_case_1_nc(:,2), c_seg_case_1_nc(:,1), c_seg_case_1_nc(:,3) + pi/2, l_f, w_r, XB, YB);

Figure_5 = figure(5);
plot(T, seg_case_1_nc(:,3)*10/4096, 'm.', 'MarkerSize', 2); hold on;
plot(T, seg_case_1_nc(:,4)*10/4096, 'c.', 'MarkerSize', 2);
plot(T, d_f, 'r', 'LineWidth', 1);
plot(T, d_r, 'b', 'LineWidth', 1); hold off;
grid on;
xlabel('Time (s)');
ylabel('Distance (m)');
[h,icons] = legend('Webots front LIDAR','Webots right LIDAR','Analytical $$d_f$$','Analytical $$d_r$$','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway LIDAR comparison: NC case 1');

% Case 2
Figure_6 = figure(6);
plot(seg_case_2_nc(:,1) - seg_case_2_nc(1,1), -seg_case_2_nc(:,2) + seg_case_2_nc(1,2), 'g.', 'MarkerSize', 2); hold on;
plot(-c_seg_case_2_nc(:,2) + c_seg_case_2_nc(1,2), c_seg_case_2_nc(:,1) - c_seg_case_2_nc(1,1), 'k', 'LineWidth', 1); hold off;
grid on;
axis square;
axis([-4.5 1.5 -1 5]);
xlabel('X distance (m)');
ylabel('Y distance (m)');
[h,icons] = legend('Webots path','Analytical path','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway path comparison: NC case 2');

Figure_7 = figure(7);
plot(T, unwrap(atan2(seg_case_2_nc(:,5),-seg_case_2_nc(:,6))), 'g.', 'MarkerSize', 2); hold on;
plot(T, c_seg_case_2_nc(:,3) + pi/2, 'k', 'LineWidth', 1); hold off;
grid on;
xlabel('Time (s)');
ylabel('Angular displacement (rad.)');
[h,icons] = legend('Webots calculated $$\theta$$','Analytical $$\theta$$','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway angle comparison: NC case 2');

Figure_8 = figure(8);
plot(T, seg_case_2_nc(:,7), 'g.', 'MarkerSize', 2); hold on;
plot(T, c_seg_case_2_nc(:,4), 'k', 'LineWidth', 1); hold off;
grid on;
xlabel('Time (s)');
ylabel('Angular rate (rad./s)');
[h,icons] = legend('Webots gyro readout','Analytical $$\dot{\theta}$$','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway angular rate comparison: NC case 2');

Figure_9 = figure(9);
plot(T, -seg_case_2_nc(:,6), 'm.', 'MarkerSize', 2); hold on;
plot(T, seg_case_2_nc(:,5), 'c.', 'MarkerSize', 2);
plot(T, sin(-c_seg_case_2_nc(:,3)), 'r', 'LineWidth', 1);
plot(T, cos(c_seg_case_2_nc(:,3)), 'b', 'LineWidth', 1); hold off;
grid on;
xlabel('Time (s)');
[h,icons] = legend('Webots compass X','Webots compass Y','Analytical $$\hat{x}$$','Analytical $$\hat{y}$$','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway compass comparison: NC case 2');

l_f = 0.25;
w_r = 0.35;
XB = [0 10];
YB = [0 10];
[ d_f, d_r ] = lidar_calc(10 - c_seg_case_2_nc(:,2), c_seg_case_2_nc(:,1), c_seg_case_2_nc(:,3) + pi/2, l_f, w_r, XB, YB);

Figure_10 = figure(10);
plot(T, seg_case_2_nc(:,3)*10/4096, 'm.', 'MarkerSize', 2); hold on;
plot(T, seg_case_2_nc(:,4)*10/4096, 'c.', 'MarkerSize', 2);
plot(T, d_f, 'r', 'LineWidth', 1);
plot(T, d_r, 'b', 'LineWidth', 1); hold off;
grid on;
ylim([0 10]);
xlabel('Time (s)');
ylabel('Distance (m)');
[h,icons] = legend('Webots front LIDAR','Webots right LIDAR','Analytical $$d_f$$','Analytical $$d_r$$','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway LIDAR comparison: NC case 2');

% Case 3
Figure_11 = figure(11);
plot(seg_case_3_nc(:,1) - seg_case_3_nc(1,1), -seg_case_3_nc(:,2) + seg_case_3_nc(1,2), 'b.', 'MarkerSize', 2); hold on;
plot(-c_seg_case_3_nc(:,2) + c_seg_case_3_nc(1,2), c_seg_case_3_nc(:,1) - c_seg_case_3_nc(1,1), 'k', 'LineWidth', 1); hold off;
grid on;
axis([-0.5 1.5 -0.5 1.5]);
axis square;
xlabel('X distance (m)');
ylabel('Y distance (m)');
[h,icons] = legend('Webots path','Analytical path','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway path comparison: NC case 3');

Figure_12 = figure(12);
plot(T, unwrap(atan2(seg_case_3_nc(:,5),-seg_case_3_nc(:,6))), 'b.', 'MarkerSize', 2); hold on;
plot(T, c_seg_case_3_nc(:,3) + pi/2, 'k', 'LineWidth', 1); hold off;
grid on;
xlabel('Time (s)');
ylabel('Angular displacement (rad.)');
[h,icons] = legend('Webots calculated $$\theta$$','Analytical $$\theta$$','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway angle comparison: NC case 3');

Figure_13 = figure(13);
plot(T, seg_case_3_nc(:,7), 'b.', 'MarkerSize', 2); hold on;
plot(T, c_seg_case_3_nc(:,4), 'k', 'LineWidth', 1); hold off;
grid on;
xlabel('Time (s)');
ylabel('Angular rate (rad./s)');
[h,icons] = legend('Webots gyro readout','Analytical $$\dot{\theta}$$','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway angular rate comparison: NC case 3');

Figure_14 = figure(14);
plot(T, -seg_case_3_nc(:,6), 'm.', 'MarkerSize', 2); hold on;
plot(T, seg_case_3_nc(:,5), 'c.', 'MarkerSize', 2);
plot(T, sin(-c_seg_case_3_nc(:,3)), 'r', 'LineWidth', 1);
plot(T, cos(c_seg_case_3_nc(:,3)), 'b', 'LineWidth', 1); hold off;
grid on;
xlabel('Time (s)');
[h,icons] = legend('Webots compass X','Webots compass Y','Analytical $$\hat{x}$$','Analytical $$\hat{y}$$','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway compass comparison: NC case 3');

l_f = 0.25;
w_r = 0.35;
XB = [0 10];
YB = [0 10];
[ d_f, d_r ] = lidar_calc(10 - c_seg_case_3_nc(:,2), c_seg_case_3_nc(:,1), c_seg_case_3_nc(:,3) + pi/2, l_f, w_r, XB, YB);

Figure_15 = figure(15);
plot(T, seg_case_3_nc(:,3)*10/4096, 'm.', 'MarkerSize', 2); hold on;
plot(T, seg_case_3_nc(:,4)*10/4096, 'c.', 'MarkerSize', 2);
plot(T, d_f, 'r', 'LineWidth', 1);
plot(T, d_r, 'b', 'LineWidth', 1); hold off;
grid on;
xlabel('Time (s)');
ylabel('Distance (m)');
[h,icons] = legend('Webots front LIDAR','Webots right LIDAR','Analytical $$d_f$$','Analytical $$d_r$$','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway LIDAR comparison: NC case 3');

%% Stats S NC 1

d = 0.502;
w = 0.53;

XS = seg_case_1_nc(:,1) - seg_case_1_nc(1,1);
YS = -seg_case_1_nc(:,2) + seg_case_1_nc(1,2);

XC = -c_seg_case_1_nc(:,2) + c_seg_case_1_nc(1,2);
YC = c_seg_case_1_nc(:,1) - c_seg_case_1_nc(1,1);

D = sqrt((XS - XC).^2 + (YS - YC).^2);

THS = unwrap(atan2(seg_case_1_nc(:,5),-seg_case_1_nc(:,6)));
THC = c_seg_case_1_nc(:,3) + pi/2;

THDS = seg_case_1_nc(:,7);
THDC = c_seg_case_1_nc(:,4);

CX = -seg_case_1_nc(:,6);
CY = seg_case_1_nc(:,5);

CCX = cos(THC);
CCY = sin(THC);

ERRX = XS - XC;
ERRY = YS - YC;

ERRTH = THS - THC;
ERRTHD = THDS - THDC;

ERRCX = CX - CCX;
ERRCY = CY - CCY;

Figure_1 = figure(1);
plot(T, D/d, 'k.', 'MarkerSize', 2); hold on;
plot(T, ERRX/d, 'r.', 'MarkerSize', 2);
plot(T, ERRY/d, 'b.', 'MarkerSize', 2); hold off;
grid on;
xlabel('Time (s)');
ylabel('m/m');
[h,icons] = legend('Distance deviation','X position deviation','Y position deviation','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway normalized linear errors: NC case 1');

Figure_2 = figure(2);
plot(T, ERRTH*w/d, 'k.', 'MarkerSize', 2);
grid on;
xlabel('Time (s)');
ylabel('rad.');
[h,icons] = legend('Angular deviation','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway normalized angular errors: NC case 1');

Figure_3 = figure(3);
plot(T, ERRTHD*w/d, 'k.', 'MarkerSize', 2);
grid on;
xlabel('Time (s)');
ylabel('$$s^{-1}$$');
[h,icons] = legend('Angular rate deviation','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway normalized angular rate errors: NC case 1');

Figure_4 = figure(4);
plot(T, ERRCX, 'r.', 'MarkerSize', 2); hold on;
plot(T, ERRCY, 'b.', 'MarkerSize', 2); hold off;
grid on;
xlabel('Time (s)');
[h,icons] = legend('X component deviation','Y component deviation','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway compass component errors: NC case 1');

l_f = 0.25;
w_r = 0.35;
XB = [0 10];
YB = [0 10];
[ d_f, d_r ] = lidar_calc(10 - c_seg_case_1_nc(:,2), c_seg_case_1_nc(:,1), c_seg_case_1_nc(:,3) + pi/2, l_f, w_r, XB, YB);

LIDF = seg_case_1_nc(:,3)*10/4096;
LIDR = seg_case_1_nc(:,4)*10/4096;

DF = d_f;
DR = d_r;

ERRDF = LIDF - DF;
ERRDR = LIDR - DR;

Figure_5 = figure(5);
plot(T, ERRDF/d, 'r.', 'MarkerSize', 2); hold on;
plot(T, ERRDR/d, 'b.', 'MarkerSize', 2); hold off;
grid on;
xlabel('Time (s)');
ylabel('m/m');
[h,icons] = legend('Front LIDAR deviation','Right LIDAR deviation','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway normalized distance sensor errors: NC case 1');

%% Stats S NC 2

d = 0.502;
w = 0.53;

XS = seg_case_2_nc(:,1) - seg_case_2_nc(1,1);
YS = -seg_case_2_nc(:,2) + seg_case_2_nc(1,2);

XC = -c_seg_case_2_nc(:,2) + c_seg_case_2_nc(1,2);
YC = c_seg_case_2_nc(:,1) - c_seg_case_2_nc(1,1);

D = sqrt((XS - XC).^2 + (YS - YC).^2);

THS = unwrap(atan2(seg_case_2_nc(:,5),-seg_case_2_nc(:,6)));
THC = c_seg_case_2_nc(:,3) + pi/2;

THDS = seg_case_2_nc(:,7);
THDC = c_seg_case_2_nc(:,4);

CX = -seg_case_2_nc(:,6);
CY = seg_case_2_nc(:,5);

CCX = cos(THC);
CCY = sin(THC);

ERRX = XS - XC;
ERRY = YS - YC;

ERRTH = THS - THC;
ERRTHD = THDS - THDC;

ERRCX = CX - CCX;
ERRCY = CY - CCY;

Figure_1 = figure(1);
plot(T, D/d, 'k.', 'MarkerSize', 2); hold on;
plot(T, ERRX/d, 'r.', 'MarkerSize', 2);
plot(T, ERRY/d, 'b.', 'MarkerSize', 2); hold off;
grid on;
xlabel('Time (s)');
ylabel('m/m');
[h,icons] = legend('Distance deviation','X position deviation','Y position deviation','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway normalized linear errors: NC case 2');

Figure_2 = figure(2);
plot(T, ERRTH*w/d, 'k.', 'MarkerSize', 2);
grid on;
xlabel('Time (s)');
ylabel('rad.');
[h,icons] = legend('Angular deviation','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway normalized angular errors: NC case 2');

Figure_3 = figure(3);
plot(T, ERRTHD*w/d, 'k.', 'MarkerSize', 2);
grid on;
xlabel('Time (s)');
ylabel('$$s^{-1}$$');
[h,icons] = legend('Angular rate deviation','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway normalized angular rate errors: NC case 2');

Figure_4 = figure(4);
plot(T, ERRCX, 'r.', 'MarkerSize', 2); hold on;
plot(T, ERRCY, 'b.', 'MarkerSize', 2); hold off;
grid on;
xlabel('Time (s)');
[h,icons] = legend('X component deviation','Y component deviation','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway compass component errors: NC case 2');

l_f = 0.25;
w_r = 0.35;
XB = [0 10];
YB = [0 10];
[ d_f, d_r ] = lidar_calc(10 - c_seg_case_2_nc(:,2), c_seg_case_2_nc(:,1), c_seg_case_2_nc(:,3) + pi/2, l_f, w_r, XB, YB);

LIDF = seg_case_2_nc(:,3)*10/4096;
LIDR = seg_case_2_nc(:,4)*10/4096;

DF = d_f;
DR = d_r;

ERRDF = LIDF - DF;
ERRDR = LIDR - DR;

Figure_5 = figure(5);
plot(T, ERRDF/d, 'r.', 'MarkerSize', 2); hold on;
plot(T, ERRDR/d, 'b.', 'MarkerSize', 2); hold off;
grid on;
ylim([-10 10]);
xlabel('Time (s)');
ylabel('m/m');
[h,icons] = legend('Front LIDAR deviation','Right LIDAR deviation','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway normalized distance sensor errors: NC case 2');

%% Stats S NC 3

d = 0.502;
w = 0.53;

XS = seg_case_3_nc(:,1) - seg_case_3_nc(1,1);
YS = -seg_case_3_nc(:,2) + seg_case_3_nc(1,2);

XC = -c_seg_case_3_nc(:,2) + c_seg_case_3_nc(1,2);
YC = c_seg_case_3_nc(:,1) - c_seg_case_3_nc(1,1);

D = sqrt((XS - XC).^2 + (YS - YC).^2);

THS = unwrap(atan2(seg_case_3_nc(:,5),-seg_case_3_nc(:,6)));
THC = c_seg_case_3_nc(:,3) + pi/2;

THDS = seg_case_3_nc(:,7);
THDC = c_seg_case_3_nc(:,4);

CX = -seg_case_3_nc(:,6);
CY = seg_case_3_nc(:,5);

CCX = cos(THC);
CCY = sin(THC);

ERRX = XS - XC;
ERRY = YS - YC;

ERRTH = THS - THC;
ERRTHD = THDS - THDC;

ERRCX = CX - CCX;
ERRCY = CY - CCY;

Figure_1 = figure(1);
plot(T, D/d, 'k.', 'MarkerSize', 2); hold on;
plot(T, ERRX/d, 'r.', 'MarkerSize', 2);
plot(T, ERRY/d, 'b.', 'MarkerSize', 2); hold off;
grid on;
xlabel('Time (s)');
ylabel('m/m');
[h,icons] = legend('Distance deviation','X position deviation','Y position deviation','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway normalized linear errors: NC case 3');

Figure_2 = figure(2);
plot(T, ERRTH*w/d, 'k.', 'MarkerSize', 2);
grid on;
xlabel('Time (s)');
ylabel('rad.');
[h,icons] = legend('Angular deviation','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway normalized angular errors: NC case 3');

Figure_3 = figure(3);
plot(T, ERRTHD*w/d, 'k.', 'MarkerSize', 2);
grid on;
xlabel('Time (s)');
ylabel('$$s^{-1}$$');
[h,icons] = legend('Angular rate deviation','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway normalized angular rate errors: NC case 3');

Figure_4 = figure(4);
plot(T, ERRCX, 'r.', 'MarkerSize', 2); hold on;
plot(T, ERRCY, 'b.', 'MarkerSize', 2); hold off;
grid on;
xlabel('Time (s)');
[h,icons] = legend('X component deviation','Y component deviation','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway compass component errors: NC case 3');

l_f = 0.25;
w_r = 0.35;
XB = [0 10];
YB = [0 10];
[ d_f, d_r ] = lidar_calc(10 - c_seg_case_3_nc(:,2), c_seg_case_3_nc(:,1), c_seg_case_3_nc(:,3) + pi/2, l_f, w_r, XB, YB);

LIDF = seg_case_3_nc(:,3)*10/4096;
LIDR = seg_case_3_nc(:,4)*10/4096;

DF = d_f;
DR = d_r;

ERRDF = LIDF - DF;
ERRDR = LIDR - DR;

Figure_5 = figure(5);
plot(T, ERRDF/d, 'r.', 'MarkerSize', 2); hold on;
plot(T, ERRDR/d, 'b.', 'MarkerSize', 2); hold off;
grid on;
ylim([-6 6]);
xlabel('Time (s)');
ylabel('m/m');
[h,icons] = legend('Front LIDAR deviation','Right LIDAR deviation','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway normalized distance sensor errors: NC case 3');

%% NC paperbot

% Case 1
Figure_1 = figure(1);
plot(p_case_1_nc(:,1) - p_case_1_nc(1,1), -p_case_1_nc(:,2) + p_case_1_nc(1,2), 'r.'); hold on;
plot(-c_p_case_1_nc(:,2) + c_p_case_1_nc(1,2), c_p_case_1_nc(:,1) - c_p_case_1_nc(1,1), 'k'); hold off;
grid on;
axis([-0.35 0.1 -0.15 0.3]);
axis square;
xlabel('X distance (m)');
ylabel('Y distance (m)');
[h,icons] = legend('Webots path','Analytical path','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot path comparison: NC case 1');

Figure_2 = figure(2);
plot(T, unwrap(atan2(p_case_1_nc(:,5),-p_case_1_nc(:,6))), 'r.'); hold on;
plot(T, c_p_case_1_nc(:,3) + pi/2, 'k'); hold off;
grid on;
xlabel('Time (s)');
ylabel('Angular displacement (rad.)');
[h,icons] = legend('Webots calculated $$\theta$$','Analytical $$\theta$$','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot angle comparison: NC case 1');

Figure_3 = figure(3);
plot(T, p_case_1_nc(:,7), 'r.'); hold on;
plot(T, c_p_case_1_nc(:,4), 'k'); hold off;
grid on;
xlabel('Time (s)');
ylabel('Angular rate (rad./s)');
[h,icons] = legend('Webots gyro readout','Analytical $$\dot{\theta}$$','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot angular rate comparison: NC case 1');

Figure_4 = figure(4);
plot(T, -p_case_1_nc(:,6), 'm.', 'MarkerSize', 2); hold on;
plot(T, p_case_1_nc(:,5), 'c.', 'MarkerSize', 2);
plot(T, sin(-c_p_case_1_nc(:,3)), 'r', 'LineWidth', 1);
plot(T, cos(c_p_case_1_nc(:,3)), 'b', 'LineWidth', 1); hold off;
grid on;
xlabel('Time (s)');
[h,icons] = legend('Webots compass X','Webots compass Y','Analytical $$\hat{x}$$','Analytical $$\hat{y}$$','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot compass comparison: NC case 1');

l_f = 0.025;
w_r = 0.045;
XB = [4.5 5.5];
YB = [4.5 5.5];
[ d_f, d_r ] = lidar_calc(10 - c_p_case_1_nc(:,2), c_p_case_1_nc(:,1), c_p_case_1_nc(:,3) + pi/2, l_f, w_r, XB, YB);

Figure_5 = figure(5);
plot(T, p_case_1_nc(:,3)*1/4096, 'm.', 'MarkerSize', 2); hold on;
plot(T, p_case_1_nc(:,4)*1/4096, 'c.', 'MarkerSize', 2);
plot(T, d_f, 'r', 'LineWidth', 1);
plot(T, d_r, 'b', 'LineWidth', 1); hold off;
grid on;
xlabel('Time (s)');
ylabel('Distance (m)');
[h,icons] = legend('Webots front LIDAR','Webots right LIDAR','Analytical $$d_f$$','Analytical $$d_r$$','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot LIDAR comparison: NC case 1');

% Case 2
Figure_6 = figure(6);
plot(p_case_2_nc(:,1) - p_case_2_nc(1,1), -p_case_2_nc(:,2) + p_case_2_nc(1,2), 'g.'); hold on;
plot(-c_p_case_2_nc(:,2) + c_p_case_2_nc(1,2), c_p_case_2_nc(:,1) - c_p_case_2_nc(1,1), 'k'); hold off;
grid on;
axis([-0.55 0.1 -0.4 0.25]);
axis square;
xlabel('X distance (m)');
ylabel('Y distance (m)');
[h,icons] = legend('Webots path','Analytical path','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot path comparison: NC case 2');

Figure_7 = figure(7);
plot(T, unwrap(atan2(p_case_2_nc(:,5),-p_case_2_nc(:,6))), 'g.'); hold on;
plot(T, c_p_case_2_nc(:,3) + pi/2, 'k'); hold off;
grid on;
% ylim([-9 2]);
xlabel('Time (s)');
ylabel('Angular displacement (rad.)');
[h,icons] = legend('Webots calculated $$\theta$$','Analytical $$\theta$$','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot angle comparison: NC case 2');

Figure_8 = figure(8);
plot(T, p_case_2_nc(:,7), 'g.'); hold on;
plot(T, c_p_case_2_nc(:,4), 'k'); hold off;
grid on;
xlabel('Time (s)');
ylabel('Angular rate (rad./s)');
[h,icons] = legend('Webots gyro readout','Analytical $$\dot{\theta}$$','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot angular rate comparison: NC case 2');

Figure_9 = figure(9);
plot(T, -p_case_2_nc(:,6), 'm.', 'MarkerSize', 2); hold on;
plot(T, p_case_2_nc(:,5), 'c.', 'MarkerSize', 2);
plot(T, sin(-c_p_case_2_nc(:,3)), 'r', 'LineWidth', 1);
plot(T, cos(c_p_case_2_nc(:,3)), 'b', 'LineWidth', 1); hold off;
grid on;
xlabel('Time (s)');
[h,icons] = legend('Webots compass X','Webots compass Y','Analytical $$\hat{x}$$','Analytical $$\hat{y}$$','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot compass comparison: NC case 2');

l_f = 0.025;
w_r = 0.045;
XB = [4.5 5.5];
YB = [4.5 5.5];
[ d_f, d_r ] = lidar_calc(10 - c_p_case_2_nc(:,2), c_p_case_2_nc(:,1), c_p_case_2_nc(:,3) + pi/2, l_f, w_r, XB, YB);

Figure_10 = figure(10);
plot(T, p_case_2_nc(:,3)*1/4096, 'm.', 'MarkerSize', 2); hold on;
plot(T, p_case_2_nc(:,4)*1/4096, 'c.', 'MarkerSize', 2);
plot(T, d_f, 'r', 'LineWidth', 1);
plot(T, d_r, 'b', 'LineWidth', 1); hold off;
grid on;
xlabel('Time (s)');
ylabel('Distance (m)');
[h,icons] = legend('Webots front LIDAR','Webots right LIDAR','Analytical $$d_f$$','Analytical $$d_r$$','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot LIDAR comparison: NC case 2');

% Case 3
Figure_11 = figure(11);
plot(p_case_3_nc(:,1) - p_case_3_nc(1,1), -p_case_3_nc(:,2) + p_case_3_nc(1,2), 'b.'); hold on;
plot(-c_p_case_3_nc(:,2) + c_p_case_3_nc(1,2), c_p_case_3_nc(:,1) - c_p_case_3_nc(1,1), 'k'); hold off;
grid on;
axis([-0.05 0.15 -0.03 0.17]);
axis square;
xlabel('X distance (m)');
ylabel('Y distance (m)');
[h,icons] = legend('Webots path','Analytical path','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot path comparison: NC case 3');

Figure_12 = figure(12);
plot(T, unwrap(atan2(p_case_3_nc(:,5),-p_case_3_nc(:,6))), 'b.'); hold on;
plot(T, c_p_case_3_nc(:,3) + pi/2, 'k'); hold off;
grid on;
xlabel('Time (s)');
ylabel('Angular displacement (rad.)');
[h,icons] = legend('Webots calculated $$\theta$$','Analytical $$\theta$$','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot angle comparison: NC case 3');

Figure_13 = figure(13);
plot(T, p_case_3_nc(:,7), 'b.'); hold on;
plot(T, c_p_case_3_nc(:,4), 'k'); hold off;
grid on;
xlabel('Time (s)');
ylabel('Angular rate (rad./s)');
[h,icons] = legend('Webots gyro readout','Analytical $$\dot{\theta}$$','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot angular rate comparison: NC case 3');

Figure_14 = figure(14);
plot(T, -p_case_3_nc(:,6), 'm.', 'MarkerSize', 2); hold on;
plot(T, p_case_3_nc(:,5), 'c.', 'MarkerSize', 2);
plot(T, sin(-c_p_case_3_nc(:,3)), 'r', 'LineWidth', 1);
plot(T, cos(c_p_case_3_nc(:,3)), 'b', 'LineWidth', 1); hold off;
grid on;
xlabel('Time (s)');
[h,icons] = legend('Webots compass X','Webots compass Y','Analytical $$\hat{x}$$','Analytical $$\hat{y}$$','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot compass comparison: NC case 3');

l_f = 0.025;
w_r = 0.045;
XB = [4.5 5.5];
YB = [4.5 5.5];
[ d_f, d_r ] = lidar_calc(10 - c_p_case_3_nc(:,2), c_p_case_3_nc(:,1), c_p_case_3_nc(:,3) + pi/2, l_f, w_r, XB, YB);

Figure_15 = figure(15);
plot(T, p_case_3_nc(:,3)*1/4096, 'm.', 'MarkerSize', 2); hold on;
plot(T, p_case_3_nc(:,4)*1/4096, 'c.', 'MarkerSize', 2);
plot(T, d_f, 'r', 'LineWidth', 1);
plot(T, d_r, 'b', 'LineWidth', 1); hold off;
grid on;
xlabel('Time (s)');
ylabel('Distance (m)');
[h,icons] = legend('Webots front LIDAR','Webots right LIDAR','Analytical $$d_f$$','Analytical $$d_r$$','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot LIDAR comparison: NC case 3');

%% Stats P NC 1

d = 0.05;
w = 0.09;

XS = p_case_1_nc(:,1) - p_case_1_nc(1,1);
YS = -p_case_1_nc(:,2) + p_case_1_nc(1,2);

XC = -c_p_case_1_nc(:,2) + c_p_case_1_nc(1,2);
YC = c_p_case_1_nc(:,1) - c_p_case_1_nc(1,1);

D = sqrt((XS - XC).^2 + (YS - YC).^2);

THS = unwrap(atan2(p_case_1_nc(:,5),-p_case_1_nc(:,6)));
THC = c_p_case_1_nc(:,3) + pi/2;

THDS = p_case_1_nc(:,7);
THDC = c_p_case_1_nc(:,4);

CX = -p_case_1_nc(:,6);
CY = p_case_1_nc(:,5);

CCX = cos(THC);
CCY = sin(THC);

ERRX = XS - XC;
ERRY = YS - YC;

ERRTH = THS - THC;
ERRTHD = THDS - THDC;

ERRCX = CX - CCX;
ERRCY = CY - CCY;

Figure_1 = figure(1);
plot(T, D/d, 'k.', 'MarkerSize', 2); hold on;
plot(T, ERRX/d, 'r.', 'MarkerSize', 2);
plot(T, ERRY/d, 'b.', 'MarkerSize', 2); hold off;
grid on;
xlabel('Time (s)');
ylabel('m/m');
[h,icons] = legend('Distance deviation','X position deviation','Y position deviation','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot normalized linear errors: NC case 1');

Figure_2 = figure(2);
plot(T, ERRTH*w/d, 'k.', 'MarkerSize', 2);
grid on;
xlabel('Time (s)');
ylabel('rad.');
[h,icons] = legend('Angular deviation','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot normalized angular errors: NC case 1');

Figure_3 = figure(3);
plot(T, ERRTHD*w/d, 'k.', 'MarkerSize', 2);
grid on;
xlabel('Time (s)');
ylabel('$$s^{-1}$$');
[h,icons] = legend('Angular rate deviation','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot normalized angular rate errors: NC case 1');

Figure_4 = figure(4);
plot(T, ERRCX, 'r.', 'MarkerSize', 2); hold on;
plot(T, ERRCY, 'b.', 'MarkerSize', 2); hold off;
grid on;
xlabel('Time (s)');
[h,icons] = legend('X component deviation','Y component deviation','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot compass component errors: NC case 1');

l_f = 0.025;
w_r = 0.045;
XB = [4.5 5.5];
YB = [4.5 5.5];
[ d_f, d_r ] = lidar_calc(10 - c_p_case_1_nc(:,2), c_p_case_1_nc(:,1), c_p_case_1_nc(:,3) + pi/2, l_f, w_r, XB, YB);

LIDF = p_case_1_nc(:,3)*1/4096;
LIDR = p_case_1_nc(:,4)*1/4096;

DF = d_f;
DR = d_r;

ERRDF = LIDF - DF;
ERRDR = LIDR - DR;

Figure_5 = figure(5);
plot(T, ERRDF/d, 'r.', 'MarkerSize', 2); hold on;
plot(T, ERRDR/d, 'b.', 'MarkerSize', 2); hold off;
grid on;
xlabel('Time (s)');
ylabel('m/m');
[h,icons] = legend('Front LIDAR deviation','Right LIDAR deviation','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot normalized distance sensor errors: NC case 1');

%% Stats P NC 2

d = 0.05;
w = 0.09;

XS = p_case_2_nc(:,1) - p_case_2_nc(1,1);
YS = -p_case_2_nc(:,2) + p_case_2_nc(1,2);

XC = -c_p_case_2_nc(:,2) + c_p_case_2_nc(1,2);
YC = c_p_case_2_nc(:,1) - c_p_case_2_nc(1,1);

D = sqrt((XS - XC).^2 + (YS - YC).^2);

THS = unwrap(atan2(p_case_2_nc(:,5),-p_case_2_nc(:,6)));
THC = c_p_case_2_nc(:,3) + pi/2;

THDS = p_case_2_nc(:,7);
THDC = c_p_case_2_nc(:,4);

CX = -p_case_2_nc(:,6);
CY = p_case_2_nc(:,5);

CCX = cos(THC);
CCY = sin(THC);

ERRX = XS - XC;
ERRY = YS - YC;

ERRTH = THS - THC;
ERRTHD = THDS - THDC;

ERRCX = CX - CCX;
ERRCY = CY - CCY;

Figure_1 = figure(1);
plot(T, D/d, 'k.', 'MarkerSize', 2); hold on;
plot(T, ERRX/d, 'r.', 'MarkerSize', 2);
plot(T, ERRY/d, 'b.', 'MarkerSize', 2); hold off;
grid on;
xlabel('Time (s)');
ylabel('m/m');
[h,icons] = legend('Distance deviation','X position deviation','Y position deviation','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot normalized linear errors: NC case 2');

Figure_2 = figure(2);
plot(T, ERRTH*w/d, 'k.', 'MarkerSize', 2);
grid on;
xlabel('Time (s)');
ylabel('rad.');
[h,icons] = legend('Angular deviation','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot normalized angular errors: NC case 2');

Figure_3 = figure(3);
plot(T, ERRTHD*w/d, 'k.', 'MarkerSize', 2);
grid on;
xlabel('Time (s)');
ylabel('$$s^{-1}$$');
[h,icons] = legend('Angular rate deviation','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot normalized angular rate errors: NC case 2');

Figure_4 = figure(4);
plot(T, ERRCX, 'r.', 'MarkerSize', 2); hold on;
plot(T, ERRCY, 'b.', 'MarkerSize', 2); hold off;
grid on;
xlabel('Time (s)');
[h,icons] = legend('X component deviation','Y component deviation','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot compass component errors: NC case 2');

l_f = 0.025;
w_r = 0.045;
XB = [4.5 5.5];
YB = [4.5 5.5];
[ d_f, d_r ] = lidar_calc(10 - c_p_case_2_nc(:,2), c_p_case_2_nc(:,1), c_p_case_2_nc(:,3) + pi/2, l_f, w_r, XB, YB);

LIDF = p_case_2_nc(:,3)*1/4096;
LIDR = p_case_2_nc(:,4)*1/4096;

DF = d_f;
DR = d_r;

ERRDF = LIDF - DF;
ERRDR = LIDR - DR;

Figure_5 = figure(5);
plot(T, ERRDF/d, 'r.', 'MarkerSize', 2); hold on;
plot(T, ERRDR/d, 'b.', 'MarkerSize', 2); hold off;
grid on;
xlabel('Time (s)');
ylabel('m/m');
[h,icons] = legend('Front LIDAR deviation','Right LIDAR deviation','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot normalized distance sensor errors: NC case 2');

%% Stats P NC 3

d = 0.05;
w = 0.09;

XS = p_case_3_nc(:,1) - p_case_3_nc(1,1);
YS = -p_case_3_nc(:,2) + p_case_3_nc(1,2);

XC = -c_p_case_3_nc(:,2) + c_p_case_3_nc(1,2);
YC = c_p_case_3_nc(:,1) - c_p_case_3_nc(1,1);

D = sqrt((XS - XC).^2 + (YS - YC).^2);

THS = unwrap(atan2(p_case_3_nc(:,5),-p_case_3_nc(:,6)));
THC = c_p_case_3_nc(:,3) + pi/2;

THDS = p_case_3_nc(:,7);
THDC = c_p_case_3_nc(:,4);

CX = -p_case_3_nc(:,6);
CY = p_case_3_nc(:,5);

CCX = cos(THC);
CCY = sin(THC);

ERRX = XS - XC;
ERRY = YS - YC;

ERRTH = THS - THC;
ERRTHD = THDS - THDC;

ERRCX = CX - CCX;
ERRCY = CY - CCY;

Figure_1 = figure(1);
plot(T, D/d, 'k.', 'MarkerSize', 2); hold on;
plot(T, ERRX/d, 'r.', 'MarkerSize', 2);
plot(T, ERRY/d, 'b.', 'MarkerSize', 2); hold off;
grid on;
xlabel('Time (s)');
ylabel('m/m');
[h,icons] = legend('Distance deviation','X position deviation','Y position deviation','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot normalized linear errors: NC case 3');

Figure_2 = figure(2);
plot(T, ERRTH*w/d, 'k.', 'MarkerSize', 2);
grid on;
xlabel('Time (s)');
ylabel('rad.');
[h,icons] = legend('Angular deviation','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot normalized angular errors: NC case 3');

Figure_3 = figure(3);
plot(T, ERRTHD*w/d, 'k.', 'MarkerSize', 2);
grid on;
xlabel('Time (s)');
ylabel('$$s^{-1}$$');
[h,icons] = legend('Angular rate deviation','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot normalized angular rate errors: NC case 3');

Figure_4 = figure(4);
plot(T, ERRCX, 'r.', 'MarkerSize', 2); hold on;
plot(T, ERRCY, 'b.', 'MarkerSize', 2); hold off;
grid on;
xlabel('Time (s)');
[h,icons] = legend('X component deviation','Y component deviation','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot compass component errors: NC case 3');

l_f = 0.025;
w_r = 0.045;
XB = [4.5 5.5];
YB = [4.5 5.5];
[ d_f, d_r ] = lidar_calc(10 - c_p_case_3_nc(:,2), c_p_case_3_nc(:,1), c_p_case_3_nc(:,3) + pi/2, l_f, w_r, XB, YB);

LIDF = p_case_3_nc(:,3)*1/4096;
LIDR = p_case_3_nc(:,4)*1/4096;

DF = d_f;
DR = d_r;

ERRDF = LIDF - DF;
ERRDR = LIDR - DR;

Figure_5 = figure(5);
plot(T, ERRDF/d, 'r.', 'MarkerSize', 2); hold on;
plot(T, ERRDR/d, 'b.', 'MarkerSize', 2); hold off;
grid on;
xlabel('Time (s)');
ylabel('m/m');
[h,icons] = legend('Front LIDAR deviation','Right LIDAR deviation','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot normalized distance sensor errors: NC case 3');

%% TK segway

% Case 1
Figure_1 = figure(1);
plot(seg_case_1_tk(:,1) - seg_case_1_tk(1,1), -seg_case_1_tk(:,2) + seg_case_1_tk(1,2), 'r.', 'MarkerSize', 2); hold on;
plot(-c_seg_case_1_tk(:,2) + c_seg_case_1_tk(1,2), c_seg_case_1_tk(:,1) - c_seg_case_1_tk(1,1), 'k', 'LineWidth', 1); hold off;
grid on;
axis([-1.5 0.5 -1 1]);
axis square;
xlabel('X distance (m)');
ylabel('Y distance (m)');
[h,icons] = legend('Webots path','Analytical path','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway path comparison: TK case 1');

Figure_2 = figure(2);
plot(T, unwrap(atan2(seg_case_1_tk(:,5),-seg_case_1_tk(:,6))), 'r.', 'MarkerSize', 2); hold on;
plot(T, c_seg_case_1_tk(:,3) + pi/2, 'k', 'LineWidth', 1); hold off;
grid on;
xlabel('Time (s)');
ylabel('Angular displacement (rad.)');
[h,icons] = legend('Webots calculated $$\theta$$','Analytical $$\theta$$','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway angle comparison: TK case 1');

Figure_3 = figure(3);
plot(T, seg_case_1_tk(:,7), 'r.', 'MarkerSize', 2); hold on;
plot(T, c_seg_case_1_tk(:,4), 'k', 'LineWidth', 1); hold off;
grid on;
xlabel('Time (s)');
ylabel('Angular rate (rad./s)');
[h,icons] = legend('Webots gyro readout','Analytical $$\dot{\theta}$$','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway angular rate comparison: TK case 1');

Figure_4 = figure(4);
plot(T, -seg_case_1_tk(:,6), 'm.', 'MarkerSize', 2); hold on;
plot(T, seg_case_1_tk(:,5), 'c.', 'MarkerSize', 2);
plot(T, sin(-c_seg_case_1_tk(:,3)), 'r', 'LineWidth', 1);
plot(T, cos(c_seg_case_1_tk(:,3)), 'b', 'LineWidth', 1); hold off;
grid on;
xlabel('Time (s)');
[h,icons] = legend('Webots compass X','Webots compass Y','Analytical $$\hat{x}$$','Analytical $$\hat{y}$$','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway compass comparison: TK case 1');

l_f = 0.25;
w_r = 0.35;
XB = [0 10];
YB = [0 10];
[ d_f, d_r ] = lidar_calc(10 - c_seg_case_1_tk(:,2), c_seg_case_1_tk(:,1), c_seg_case_1_tk(:,3) + pi/2, l_f, w_r, XB, YB);

Figure_5 = figure(5);
plot(T, seg_case_1_tk(:,3)*10/4096, 'm.', 'MarkerSize', 2); hold on;
plot(T, seg_case_1_tk(:,4)*10/4096, 'c.', 'MarkerSize', 2);
plot(T, d_f, 'r', 'LineWidth', 1);
plot(T, d_r, 'b', 'LineWidth', 1); hold off;
grid on;
xlabel('Time (s)');
ylabel('Distance (m)');
[h,icons] = legend('Webots front LIDAR','Webots right LIDAR','Analytical $$d_f$$','Analytical $$d_r$$','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway LIDAR comparison: TK case 1');

% Case 2
Figure_6 = figure(6);
plot(seg_case_2_tk(:,1) - seg_case_2_tk(1,1), -seg_case_2_tk(:,2) + seg_case_2_tk(1,2), 'g.', 'MarkerSize', 2); hold on;
plot(-c_seg_case_2_tk(:,2) + c_seg_case_2_tk(1,2), c_seg_case_2_tk(:,1) - c_seg_case_2_tk(1,1), 'k', 'LineWidth', 1); hold off;
grid on;
axis square;
axis([-1 4 -4 1]);
xlabel('X distance (m)');
ylabel('Y distance (m)');
[h,icons] = legend('Webots path','Analytical path','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway path comparison: TK case 2');

Figure_7 = figure(7);
plot(T, unwrap(atan2(seg_case_2_tk(:,5),-seg_case_2_tk(:,6))), 'g.', 'MarkerSize', 2); hold on;
plot(T, c_seg_case_2_tk(:,3) + pi/2, 'k', 'LineWidth', 1); hold off;
grid on;
ylim([-9 2]);
xlabel('Time (s)');
ylabel('Angular displacement (rad.)');
[h,icons] = legend('Webots calculated $$\theta$$','Analytical $$\theta$$','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway angle comparison: TK case 2');

Figure_8 = figure(8);
plot(T, seg_case_2_tk(:,7), 'g.', 'MarkerSize', 2); hold on;
plot(T, c_seg_case_2_tk(:,4), 'k', 'LineWidth', 1); hold off;
grid on;
xlabel('Time (s)');
ylabel('Angular rate (rad./s)');
[h,icons] = legend('Webots gyro readout','Analytical $$\dot{\theta}$$','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway angular rate comparison: TK case 2');

Figure_9 = figure(9);
plot(T, -seg_case_2_tk(:,6), 'm.', 'MarkerSize', 2); hold on;
plot(T, seg_case_2_tk(:,5), 'c.', 'MarkerSize', 2);
plot(T, sin(-c_seg_case_2_tk(:,3)), 'r', 'LineWidth', 1);
plot(T, cos(c_seg_case_2_tk(:,3)), 'b', 'LineWidth', 1); hold off;
grid on;
xlabel('Time (s)');
[h,icons] = legend('Webots compass X','Webots compass Y','Analytical $$\hat{x}$$','Analytical $$\hat{y}$$','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway compass comparison: TK case 2');

l_f = 0.25;
w_r = 0.35;
XB = [0 10];
YB = [0 10];
[ d_f, d_r ] = lidar_calc(10 - c_seg_case_2_tk(:,2), c_seg_case_2_tk(:,1), c_seg_case_2_tk(:,3) + pi/2, l_f, w_r, XB, YB);

Figure_10 = figure(10);
plot(T, seg_case_2_tk(:,3)*10/4096, 'm.', 'MarkerSize', 2); hold on;
plot(T, seg_case_2_tk(:,4)*10/4096, 'c.', 'MarkerSize', 2);
plot(T, d_f, 'r', 'LineWidth', 1);
plot(T, d_r, 'b', 'LineWidth', 1); hold off;
grid on;
xlabel('Time (s)');
ylabel('Distance (m)');
[h,icons] = legend('Webots front LIDAR','Webots right LIDAR','Analytical $$d_f$$','Analytical $$d_r$$','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway LIDAR comparison: TK case 2');

% Case 3
Figure_11 = figure(11);
plot(seg_case_3_tk(:,1) - seg_case_3_tk(1,1), -seg_case_3_tk(:,2) + seg_case_3_tk(1,2), 'b.', 'MarkerSize', 2); hold on;
plot(-c_seg_case_3_tk(:,2) + c_seg_case_3_tk(1,2), c_seg_case_3_tk(:,1) - c_seg_case_3_tk(1,1), 'k', 'LineWidth', 1); hold off;
grid on;
axis([-1 4 -4.5 0.5]);
axis square;
xlabel('X distance (m)');
ylabel('Y distance (m)');
[h,icons] = legend('Webots path','Analytical path','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway path comparison: TK case 3');

Figure_12 = figure(12);
plot(T, unwrap(atan2(seg_case_3_tk(:,5),-seg_case_3_tk(:,6))), 'b.', 'MarkerSize', 2); hold on;
plot(T, c_seg_case_3_tk(:,3) + pi/2, 'k', 'LineWidth', 1); hold off;
grid on;
xlabel('Time (s)');
ylabel('Angular displacement (rad.)');
[h,icons] = legend('Webots calculated $$\theta$$','Analytical $$\theta$$','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway angle comparison: TK case 3');

Figure_13 = figure(13);
plot(T, seg_case_3_tk(:,7), 'b.', 'MarkerSize', 2); hold on;
plot(T, c_seg_case_3_tk(:,4), 'k', 'LineWidth', 1); hold off;
grid on;
xlabel('Time (s)');
ylabel('Angular rate (rad./s)');
[h,icons] = legend('Webots gyro readout','Analytical $$\dot{\theta}$$','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway angular rate comparison: TK case 3');

Figure_14 = figure(14);
plot(T, -seg_case_3_tk(:,6), 'm.', 'MarkerSize', 2); hold on;
plot(T, seg_case_3_tk(:,5), 'c.', 'MarkerSize', 2);
plot(T, sin(-c_seg_case_3_tk(:,3)), 'r', 'LineWidth', 1);
plot(T, cos(c_seg_case_3_tk(:,3)), 'b', 'LineWidth', 1); hold off;
grid on;
xlabel('Time (s)');
[h,icons] = legend('Webots compass X','Webots compass Y','Analytical $$\hat{x}$$','Analytical $$\hat{y}$$','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway compass comparison: TK case 3');

l_f = 0.25;
w_r = 0.35;
XB = [0 10];
YB = [0 10];
[ d_f, d_r ] = lidar_calc(10 - c_seg_case_3_tk(:,2), c_seg_case_3_tk(:,1), c_seg_case_3_tk(:,3) + pi/2, l_f, w_r, XB, YB);

Figure_15 = figure(15);
plot(T, seg_case_3_tk(:,3)*10/4096, 'm.', 'MarkerSize', 2); hold on;
plot(T, seg_case_3_tk(:,4)*10/4096, 'c.', 'MarkerSize', 2);
plot(T, d_f, 'r', 'LineWidth', 1);
plot(T, d_r, 'b', 'LineWidth', 1); hold off;
grid on;
xlabel('Time (s)');
ylabel('Distance (m)');
[h,icons] = legend('Webots front LIDAR','Webots right LIDAR','Analytical $$d_f$$','Analytical $$d_r$$','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway LIDAR comparison: TK case 3');

%% Stats S TK 1

d = 0.502;
w = 0.53;

XS = seg_case_1_tk(:,1) - seg_case_1_tk(1,1);
YS = -seg_case_1_tk(:,2) + seg_case_1_tk(1,2);

XC = -c_seg_case_1_tk(:,2) + c_seg_case_1_tk(1,2);
YC = c_seg_case_1_tk(:,1) - c_seg_case_1_tk(1,1);

D = sqrt((XS - XC).^2 + (YS - YC).^2);

THS = unwrap(atan2(seg_case_1_tk(:,5),-seg_case_1_tk(:,6)));
THC = c_seg_case_1_tk(:,3) + pi/2;

THDS = seg_case_1_tk(:,7);
THDC = c_seg_case_1_tk(:,4);

CX = -seg_case_1_tk(:,6);
CY = seg_case_1_tk(:,5);

CCX = cos(THC);
CCY = sin(THC);

ERRX = XS - XC;
ERRY = YS - YC;

ERRTH = THS - THC;
ERRTHD = THDS - THDC;

ERRCX = CX - CCX;
ERRCY = CY - CCY;

Figure_1 = figure(1);
plot(T, D/d, 'k.', 'MarkerSize', 2); hold on;
plot(T, ERRX/d, 'r.', 'MarkerSize', 2);
plot(T, ERRY/d, 'b.', 'MarkerSize', 2); hold off;
grid on;
xlabel('Time (s)');
ylabel('m/m');
[h,icons] = legend('Distance deviation','X position deviation','Y position deviation','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway normalized linear errors: TK case 1');

Figure_2 = figure(2);
plot(T, ERRTH*w/d, 'k.', 'MarkerSize', 2);
grid on;
xlabel('Time (s)');
ylabel('rad.');
[h,icons] = legend('Angular deviation','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway normalized angular errors: TK case 1');

Figure_3 = figure(3);
plot(T, ERRTHD*w/d, 'k.', 'MarkerSize', 2);
grid on;
xlabel('Time (s)');
ylabel('$$s^{-1}$$');
[h,icons] = legend('Angular rate deviation','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway normalized angular rate errors: TK case 1');

Figure_4 = figure(4);
plot(T, ERRCX, 'r.', 'MarkerSize', 2); hold on;
plot(T, ERRCY, 'b.', 'MarkerSize', 2); hold off;
grid on;
xlabel('Time (s)');
[h,icons] = legend('X component deviation','Y component deviation','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway compass component errors: TK case 1');

l_f = 0.25;
w_r = 0.35;
XB = [0 10];
YB = [0 10];
[ d_f, d_r ] = lidar_calc(10 - c_seg_case_1_tk(:,2), c_seg_case_1_tk(:,1), c_seg_case_1_tk(:,3) + pi/2, l_f, w_r, XB, YB);

LIDF = seg_case_1_tk(:,3)*10/4096;
LIDR = seg_case_1_tk(:,4)*10/4096;

DF = d_f;
DR = d_r;

ERRDF = LIDF - DF;
ERRDR = LIDR - DR;

Figure_5 = figure(5);
plot(T, ERRDF/d, 'r.', 'MarkerSize', 2); hold on;
plot(T, ERRDR/d, 'b.', 'MarkerSize', 2); hold off;
grid on;
xlabel('Time (s)');
ylabel('m/m');
[h,icons] = legend('Front LIDAR deviation','Right LIDAR deviation','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway normalized distance sensor errors: TK case 1');

%% Stats S TK 2

d = 0.502;
w = 0.53;

XS = seg_case_2_tk(:,1) - seg_case_2_tk(1,1);
YS = -seg_case_2_tk(:,2) + seg_case_2_tk(1,2);

XC = -c_seg_case_2_tk(:,2) + c_seg_case_2_tk(1,2);
YC = c_seg_case_2_tk(:,1) - c_seg_case_2_tk(1,1);

D = sqrt((XS - XC).^2 + (YS - YC).^2);

THS = unwrap(atan2(seg_case_2_tk(:,5),-seg_case_2_tk(:,6)));
THC = c_seg_case_2_tk(:,3) + pi/2;

THDS = seg_case_2_tk(:,7);
THDC = c_seg_case_2_tk(:,4);

CX = -seg_case_2_tk(:,6);
CY = seg_case_2_tk(:,5);

CCX = cos(THC);
CCY = sin(THC);

ERRX = XS - XC;
ERRY = YS - YC;

ERRTH = THS - THC;
ERRTHD = THDS - THDC;

ERRCX = CX - CCX;
ERRCY = CY - CCY;

Figure_1 = figure(1);
plot(T, D/d, 'k.', 'MarkerSize', 2); hold on;
plot(T, ERRX/d, 'r.', 'MarkerSize', 2);
plot(T, ERRY/d, 'b.', 'MarkerSize', 2); hold off;
grid on;
xlabel('Time (s)');
ylabel('m/m');
[h,icons] = legend('Distance deviation','X position deviation','Y position deviation','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway normalized linear errors: TK case 2');

Figure_2 = figure(2);
plot(T, ERRTH*w/d, 'k.', 'MarkerSize', 2);
grid on;
xlabel('Time (s)');
ylabel('rad.');
[h,icons] = legend('Angular deviation','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway normalized angular errors: TK case 2');

Figure_3 = figure(3);
plot(T, ERRTHD*w/d, 'k.', 'MarkerSize', 2);
grid on;
xlabel('Time (s)');
ylabel('$$s^{-1}$$');
[h,icons] = legend('Angular rate deviation','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway normalized angular rate errors: TK case 2');

Figure_4 = figure(4);
plot(T, ERRCX, 'r.', 'MarkerSize', 2); hold on;
plot(T, ERRCY, 'b.', 'MarkerSize', 2); hold off;
grid on;
xlabel('Time (s)');
[h,icons] = legend('X component deviation','Y component deviation','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway compass component errors: TK case 2');

l_f = 0.25;
w_r = 0.35;
XB = [0 10];
YB = [0 10];
[ d_f, d_r ] = lidar_calc(10 - c_seg_case_2_tk(:,2), c_seg_case_2_tk(:,1), c_seg_case_2_tk(:,3) + pi/2, l_f, w_r, XB, YB);

LIDF = seg_case_2_tk(:,3)*10/4096;
LIDR = seg_case_2_tk(:,4)*10/4096;

DF = d_f;
DR = d_r;

ERRDF = LIDF - DF;
ERRDR = LIDR - DR;

Figure_5 = figure(5);
plot(T, ERRDF/d, 'r.', 'MarkerSize', 2); hold on;
plot(T, ERRDR/d, 'b.', 'MarkerSize', 2); hold off;
grid on;
xlabel('Time (s)');
ylabel('m/m');
[h,icons] = legend('Front LIDAR deviation','Right LIDAR deviation','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway normalized distance sensor errors: TK case 2');

%% Stats S TK 3

d = 0.502;
w = 0.53;

XS = seg_case_3_tk(:,1) - seg_case_3_tk(1,1);
YS = -seg_case_3_tk(:,2) + seg_case_3_tk(1,2);

XC = -c_seg_case_3_tk(:,2) + c_seg_case_3_tk(1,2);
YC = c_seg_case_3_tk(:,1) - c_seg_case_3_tk(1,1);

D = sqrt((XS - XC).^2 + (YS - YC).^2);

THS = unwrap(atan2(seg_case_3_tk(:,5),-seg_case_3_tk(:,6)));
THC = c_seg_case_3_tk(:,3) + pi/2;

THDS = seg_case_3_tk(:,7);
THDC = c_seg_case_3_tk(:,4);

CX = -seg_case_3_tk(:,6);
CY = seg_case_3_tk(:,5);

CCX = cos(THC);
CCY = sin(THC);

ERRX = XS - XC;
ERRY = YS - YC;

ERRTH = THS - THC;
ERRTHD = THDS - THDC;

ERRCX = CX - CCX;
ERRCY = CY - CCY;

Figure_1 = figure(1);
plot(T, D/d, 'k.', 'MarkerSize', 2); hold on;
plot(T, ERRX/d, 'r.', 'MarkerSize', 2);
plot(T, ERRY/d, 'b.', 'MarkerSize', 2); hold off;
grid on;
xlabel('Time (s)');
ylabel('m/m');
[h,icons] = legend('Distance deviation','X position deviation','Y position deviation','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway normalized linear errors: TK case 3');

Figure_2 = figure(2);
plot(T, ERRTH*w/d, 'k.', 'MarkerSize', 2);
grid on;
xlabel('Time (s)');
ylabel('rad.');
[h,icons] = legend('Angular deviation','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway normalized angular errors: TK case 3');

Figure_3 = figure(3);
plot(T, ERRTHD*w/d, 'k.', 'MarkerSize', 2);
grid on;
xlabel('Time (s)');
ylabel('$$s^{-1}$$');
[h,icons] = legend('Angular rate deviation','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway normalized angular rate errors: TK case 3');

Figure_4 = figure(4);
plot(T, ERRCX, 'r.', 'MarkerSize', 2); hold on;
plot(T, ERRCY, 'b.', 'MarkerSize', 2); hold off;
grid on;
xlabel('Time (s)');
% ylabel('Angle (rad.)');
[h,icons] = legend('X component deviation','Y component deviation','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway compass component errors: TK case 3');

l_f = 0.25;
w_r = 0.35;
XB = [0 10];
YB = [0 10];
[ d_f, d_r ] = lidar_calc(10 - c_seg_case_3_tk(:,2), c_seg_case_3_tk(:,1), c_seg_case_3_tk(:,3) + pi/2, l_f, w_r, XB, YB);

LIDF = seg_case_3_tk(:,3)*10/4096;
LIDR = seg_case_3_tk(:,4)*10/4096;

DF = d_f;
DR = d_r;

ERRDF = LIDF - DF;
ERRDR = LIDR - DR;

Figure_5 = figure(5);
plot(T, ERRDF/d, 'r.', 'MarkerSize', 2); hold on;
plot(T, ERRDR/d, 'b.', 'MarkerSize', 2); hold off;
grid on;
xlabel('Time (s)');
ylabel('m/m');
[h,icons] = legend('Front LIDAR deviation','Right LIDAR deviation','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Segway normalized distance sensor errors: TK case 3');

%% TK paperbot

% Case 1
Figure_1 = figure(1);
plot(p_case_1_tk(:,1) - p_case_1_tk(1,1), -p_case_1_tk(:,2) + p_case_1_tk(1,2), 'r.', 'MarkerSize', 2); hold on;
plot(-c_p_case_1_tk(:,2) + c_p_case_1_tk(1,2), c_p_case_1_tk(:,1) - c_p_case_1_tk(1,1), 'k'); hold off;
grid on;
axis([-0.2 0.1 -0.15 0.15]);
axis square;
xlabel('X distance (m)');
ylabel('Y distance (m)');
[h,icons] = legend('Webots path','Analytical path','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot path comparison: TK case 1');

Figure_2 = figure(2);
plot(T, unwrap(atan2(p_case_1_tk(:,5),-p_case_1_tk(:,6))), 'r.', 'MarkerSize', 2); hold on;
plot(T, c_p_case_1_tk(:,3) + pi/2, 'k'); hold off;
grid on;
xlabel('Time (s)');
ylabel('Angular displacement (rad.)');
[h,icons] = legend('Webots calculated $$\theta$$','Analytical $$\theta$$','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot angle comparison: TK case 1');

Figure_3 = figure(3);
plot(T, p_case_1_tk(:,7), 'r.', 'MarkerSize', 2); hold on;
plot(T, c_p_case_1_tk(:,4), 'k'); hold off;
grid on;
xlabel('Time (s)');
ylabel('Angular rate (rad./s)');
[h,icons] = legend('Webots gyro readout','Analytical $$\dot{\theta}$$','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot angular rate comparison: TK case 1');

Figure_4 = figure(4);
plot(T, -p_case_1_tk(:,6), 'm.', 'MarkerSize', 2); hold on;
plot(T, p_case_1_tk(:,5), 'c.', 'MarkerSize', 2);
plot(T, sin(-c_p_case_1_tk(:,3)), 'r', 'LineWidth', 1);
plot(T, cos(c_p_case_1_tk(:,3)), 'b', 'LineWidth', 1); hold off;
grid on;
xlabel('Time (s)');
[h,icons] = legend('Webots compass X','Webots compass Y','Analytical $$\hat{x}$$','Analytical $$\hat{y}$$','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot compass comparison: TK case 1');

l_f = 0.025;
w_r = 0.045;
XB = [4.5 5.5];
YB = [4.5 5.5];
[ d_f, d_r ] = lidar_calc(10 - c_p_case_1_tk(:,2), c_p_case_1_tk(:,1), c_p_case_1_tk(:,3) + pi/2, l_f, w_r, XB, YB);

Figure_5 = figure(5);
plot(T, p_case_1_tk(:,3)*1/4096, 'm.', 'MarkerSize', 2); hold on;
plot(T, p_case_1_tk(:,4)*1/4096, 'c.', 'MarkerSize', 2);
plot(T, d_f, 'r', 'LineWidth', 1);
plot(T, d_r, 'b', 'LineWidth', 1); hold off;
grid on;
xlabel('Time (s)');
ylabel('Distance (m)');
[h,icons] = legend('Webots front LIDAR','Webots right LIDAR','Analytical $$d_f$$','Analytical $$d_r$$','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot LIDAR comparison: TK case 1');

% Case 2
Figure_6 = figure(6);
plot(p_case_2_tk(:,1) - p_case_2_tk(1,1), -p_case_2_tk(:,2) + p_case_2_tk(1,2), 'g.', 'MarkerSize', 2); hold on;
plot(-c_p_case_2_tk(:,2) + c_p_case_2_tk(1,2), c_p_case_2_tk(:,1) - c_p_case_2_tk(1,1), 'k'); hold off;
grid on;
axis([-0.4 0.1 -0.15 0.35]);
axis square;
xlabel('X distance (m)');
ylabel('Y distance (m)');
[h,icons] = legend('Webots path','Analytical path','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot path comparison: TK case 2');

Figure_7 = figure(7);
plot(T, unwrap(atan2(p_case_2_tk(:,5),-p_case_2_tk(:,6))), 'g.', 'MarkerSize', 2); hold on;
plot(T, c_p_case_2_tk(:,3) + pi/2, 'k'); hold off;
grid on;
xlabel('Time (s)');
ylabel('Angular displacement (rad.)');
[h,icons] = legend('Webots calculated $$\theta$$','Analytical $$\theta$$','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot angle comparison: TK case 2');

Figure_8 = figure(8);
plot(T, p_case_2_tk(:,7), 'g.', 'MarkerSize', 2); hold on;
plot(T, c_p_case_2_tk(:,4), 'k'); hold off;
grid on;
xlabel('Time (s)');
ylabel('Angular rate (rad./s)');
[h,icons] = legend('Webots gyro readout','Analytical $$\dot{\theta}$$','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot angular rate comparison: TK case 2');

Figure_9 = figure(9);
plot(T, -p_case_2_tk(:,6), 'm.', 'MarkerSize', 2); hold on;
plot(T, p_case_2_tk(:,5), 'c.', 'MarkerSize', 2);
plot(T, sin(-c_p_case_2_tk(:,3)), 'r', 'LineWidth', 1);
plot(T, cos(c_p_case_2_tk(:,3)), 'b', 'LineWidth', 1); hold off;
grid on;
xlabel('Time (s)');
[h,icons] = legend('Webots compass X','Webots compass Y','Analytical $$\hat{x}$$','Analytical $$\hat{y}$$','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot compass comparison: TK case 2');

l_f = 0.025;
w_r = 0.045;
XB = [4.5 5.5];
YB = [4.5 5.5];
[ d_f, d_r ] = lidar_calc(10 - c_p_case_2_tk(:,2), c_p_case_2_tk(:,1), c_p_case_2_tk(:,3) + pi/2, l_f, w_r, XB, YB);

Figure_10 = figure(10);
plot(T, p_case_2_tk(:,3)*1/4096, 'm.', 'MarkerSize', 2); hold on;
plot(T, p_case_2_tk(:,4)*1/4096, 'c.', 'MarkerSize', 2);
plot(T, d_f, 'r', 'LineWidth', 1);
plot(T, d_r, 'b', 'LineWidth', 1); hold off;
grid on;
xlabel('Time (s)');
ylabel('Distance (m)');
[h,icons] = legend('Webots front LIDAR','Webots right LIDAR','Analytical $$d_f$$','Analytical $$d_r$$','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot LIDAR comparison: TK case 2');

% Case 3
Figure_11 = figure(11);
plot(p_case_3_tk(:,1) - p_case_3_tk(1,1), -p_case_3_tk(:,2) + p_case_3_tk(1,2), 'b.', 'MarkerSize', 2); hold on;
plot(-c_p_case_3_tk(:,2) + c_p_case_3_tk(1,2), c_p_case_3_tk(:,1) - c_p_case_3_tk(1,1), 'k'); hold off;
grid on;
axis([-0.2 0.25 -0.4 0.05]);
axis square;
xlabel('X distance (m)');
ylabel('Y distance (m)');
[h,icons] = legend('Webots path','Analytical path','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot path comparison: TK case 3');

Figure_12 = figure(12);
plot(T, unwrap(atan2(p_case_3_tk(:,5),-p_case_3_tk(:,6))), 'b.', 'MarkerSize', 2); hold on;
plot(T, c_p_case_3_tk(:,3) + pi/2, 'k'); hold off;
grid on;
xlabel('Time (s)');
ylabel('Angular displacement (rad.)');
[h,icons] = legend('Webots calculated $$\theta$$','Analytical $$\theta$$','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot angle comparison: TK case 3');

Figure_13 = figure(13);
plot(T, p_case_3_tk(:,7), 'b.', 'MarkerSize', 2); hold on;
plot(T, c_p_case_3_tk(:,4), 'k'); hold off;
grid on;
xlabel('Time (s)');
ylabel('Angular rate (rad./s)');
[h,icons] = legend('Webots gyro readout','Analytical $$\dot{\theta}$$','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot angular rate comparison: TK case 3');

Figure_14 = figure(14);
plot(T, -p_case_3_tk(:,6), 'm.', 'MarkerSize', 2); hold on;
plot(T, p_case_3_tk(:,5), 'c.', 'MarkerSize', 2);
plot(T, sin(-c_p_case_3_tk(:,3)), 'r', 'LineWidth', 1);
plot(T, cos(c_p_case_3_tk(:,3)), 'b', 'LineWidth', 1); hold off;
grid on;
xlabel('Time (s)');
[h,icons] = legend('Webots compass X','Webots compass Y','Analytical $$\hat{x}$$','Analytical $$\hat{y}$$','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot compass comparison: TK case 3');

l_f = 0.025;
w_r = 0.045;
XB = [4.5 5.5];
YB = [4.5 5.5];
[ d_f, d_r ] = lidar_calc(10 - c_p_case_3_tk(:,2), c_p_case_3_tk(:,1), c_p_case_3_tk(:,3) + pi/2, l_f, w_r, XB, YB);

Figure_15 = figure(15);
plot(T, p_case_3_tk(:,3)*1/4096, 'm.', 'MarkerSize', 2); hold on;
plot(T, p_case_3_tk(:,4)*1/4096, 'c.', 'MarkerSize', 2);
plot(T, d_f, 'r', 'LineWidth', 1);
plot(T, d_r, 'b', 'LineWidth', 1); hold off;
grid on;
xlabel('Time (s)');
ylabel('Distance (m)');
[h,icons] = legend('Webots front LIDAR','Webots right LIDAR','Analytical $$d_f$$','Analytical $$d_r$$','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot LIDAR comparison: TK case 3');

%% Stats P TK 1

d = 0.05;
w = 0.09;

XS = p_case_1_tk(:,1) - p_case_1_tk(1,1);
YS = -p_case_1_tk(:,2) + p_case_1_tk(1,2);

XC = -c_p_case_1_tk(:,2) + c_p_case_1_tk(1,2);
YC = c_p_case_1_tk(:,1) - c_p_case_1_tk(1,1);

D = sqrt((XS - XC).^2 + (YS - YC).^2);

THS = unwrap(atan2(p_case_1_tk(:,5),-p_case_1_tk(:,6)));
THC = c_p_case_1_tk(:,3) + pi/2;

THDS = p_case_1_tk(:,7);
THDC = c_p_case_1_tk(:,4);

CX = -p_case_1_tk(:,6);
CY = p_case_1_tk(:,5);

CCX = cos(THC);
CCY = sin(THC);

ERRX = XS - XC;
ERRY = YS - YC;

ERRTH = THS - THC;
ERRTHD = THDS - THDC;

ERRCX = CX - CCX;
ERRCY = CY - CCY;

Figure_1 = figure(1);
plot(T, D/d, 'k.', 'MarkerSize', 2); hold on;
plot(T, ERRX/d, 'r.', 'MarkerSize', 2);
plot(T, ERRY/d, 'b.', 'MarkerSize', 2); hold off;
grid on;
xlabel('Time (s)');
ylabel('m/m');
[h,icons] = legend('Distance deviation','X position deviation','Y position deviation','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot normalized linear errors: TK case 1');

Figure_2 = figure(2);
plot(T, ERRTH*w/d, 'k.', 'MarkerSize', 2);
grid on;
xlabel('Time (s)');
ylabel('rad.');
[h,icons] = legend('Angular deviation','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot normalized angular errors: TK case 1');

Figure_3 = figure(3);
plot(T, ERRTHD*w/d, 'k.', 'MarkerSize', 2);
grid on;
xlabel('Time (s)');
ylabel('$$s^{-1}$$');
[h,icons] = legend('Angular rate deviation','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot normalized angular rate errors: TK case 1');

Figure_4 = figure(4);
plot(T, ERRCX, 'r.', 'MarkerSize', 2); hold on;
plot(T, ERRCY, 'b.', 'MarkerSize', 2); hold off;
grid on;
xlabel('Time (s)');
[h,icons] = legend('X component deviation','Y component deviation','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot compass component errors: TK case 1');

l_f = 0.025;
w_r = 0.045;
XB = [4.5 5.5];
YB = [4.5 5.5];
[ d_f, d_r ] = lidar_calc(10 - c_p_case_1_tk(:,2), c_p_case_1_tk(:,1), c_p_case_1_tk(:,3) + pi/2, l_f, w_r, XB, YB);

LIDF = p_case_1_tk(:,3)*1/4096;
LIDR = p_case_1_tk(:,4)*1/4096;

DF = d_f;
DR = d_r;

ERRDF = LIDF - DF;
ERRDR = LIDR - DR;

Figure_5 = figure(5);
plot(T, ERRDF/d, 'r.', 'MarkerSize', 2); hold on;
plot(T, ERRDR/d, 'b.', 'MarkerSize', 2); hold off;
grid on;
xlabel('Time (s)');
ylabel('m/m');
[h,icons] = legend('Front LIDAR deviation','Right LIDAR deviation','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot normalized distance sensor errors: TK case 1');

%% Stats P TK 2

d = 0.05;
w = 0.09;

XS = p_case_2_tk(:,1) - p_case_2_tk(1,1);
YS = -p_case_2_tk(:,2) + p_case_2_tk(1,2);

XC = -c_p_case_2_tk(:,2) + c_p_case_2_tk(1,2);
YC = c_p_case_2_tk(:,1) - c_p_case_2_tk(1,1);

D = sqrt((XS - XC).^2 + (YS - YC).^2);

THS = unwrap(atan2(p_case_2_tk(:,5),-p_case_2_tk(:,6)));
THC = c_p_case_2_tk(:,3) + pi/2;

THDS = p_case_2_tk(:,7);
THDC = c_p_case_2_tk(:,4);

CX = -p_case_2_tk(:,6);
CY = p_case_2_tk(:,5);

CCX = cos(THC);
CCY = sin(THC);

ERRX = XS - XC;
ERRY = YS - YC;

ERRTH = THS - THC;
ERRTHD = THDS - THDC;

ERRCX = CX - CCX;
ERRCY = CY - CCY;

Figure_1 = figure(1);
plot(T, D/d, 'k.', 'MarkerSize', 2); hold on;
plot(T, ERRX/d, 'r.', 'MarkerSize', 2);
plot(T, ERRY/d, 'b.', 'MarkerSize', 2); hold off;
grid on;
xlabel('Time (s)');
ylabel('m/m');
[h,icons] = legend('Distance deviation','X position deviation','Y position deviation','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot normalized linear errors: TK case 2');

Figure_2 = figure(2);
plot(T, ERRTH*w/d, 'k.', 'MarkerSize', 2);
grid on;
xlabel('Time (s)');
ylabel('rad.');
[h,icons] = legend('Angular deviation','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot normalized angular errors: TK case 2');

Figure_3 = figure(3);
plot(T, ERRTHD*w/d, 'k.', 'MarkerSize', 2);
grid on;
xlabel('Time (s)');
ylabel('$$s^{-1}$$');
[h,icons] = legend('Angular rate deviation','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot normalized angular rate errors: TK case 2');

Figure_4 = figure(4);
plot(T, ERRCX, 'r.', 'MarkerSize', 2); hold on;
plot(T, ERRCY, 'b.', 'MarkerSize', 2); hold off;
grid on;
xlabel('Time (s)');
[h,icons] = legend('X component deviation','Y component deviation','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot compass component errors: TK case 2');

l_f = 0.025;
w_r = 0.045;
XB = [4.5 5.5];
YB = [4.5 5.5];
[ d_f, d_r ] = lidar_calc(10 - c_p_case_2_tk(:,2), c_p_case_2_tk(:,1), c_p_case_2_tk(:,3) + pi/2, l_f, w_r, XB, YB);

LIDF = p_case_2_tk(:,3)*1/4096;
LIDR = p_case_2_tk(:,4)*1/4096;

DF = d_f;
DR = d_r;

ERRDF = LIDF - DF;
ERRDR = LIDR - DR;

Figure_5 = figure(5);
plot(T, ERRDF/d, 'r.', 'MarkerSize', 2); hold on;
plot(T, ERRDR/d, 'b.', 'MarkerSize', 2); hold off;
grid on;
xlabel('Time (s)');
ylabel('m/m');
[h,icons] = legend('Front LIDAR deviation','Right LIDAR deviation','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot normalized distance sensor errors: TK case 2');

%% Stats P TK 3

d = 0.05;
w = 0.09;

XS = p_case_3_tk(:,1) - p_case_3_tk(1,1);
YS = -p_case_3_tk(:,2) + p_case_3_tk(1,2);

XC = -c_p_case_3_tk(:,2) + c_p_case_3_tk(1,2);
YC = c_p_case_3_tk(:,1) - c_p_case_3_tk(1,1);

D = sqrt((XS - XC).^2 + (YS - YC).^2);

THS = unwrap(atan2(p_case_3_tk(:,5),-p_case_3_tk(:,6)));
THC = c_p_case_3_tk(:,3) + pi/2;

THDS = p_case_3_tk(:,7);
THDC = c_p_case_3_tk(:,4);

CX = -p_case_3_tk(:,6);
CY = p_case_3_tk(:,5);

CCX = cos(THC);
CCY = sin(THC);

ERRX = XS - XC;
ERRY = YS - YC;

ERRTH = THS - THC;
ERRTHD = THDS - THDC;

ERRCX = CX - CCX;
ERRCY = CY - CCY;

Figure_1 = figure(1);
plot(T, D/d, 'k.', 'MarkerSize', 2); hold on;
plot(T, ERRX/d, 'r.', 'MarkerSize', 2);
plot(T, ERRY/d, 'b.', 'MarkerSize', 2); hold off;
grid on;
xlabel('Time (s)');
ylabel('m/m');
[h,icons] = legend('Distance deviation','X position deviation','Y position deviation','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot normalized linear errors: TK case 3');

Figure_2 = figure(2);
plot(T, ERRTH*w/d, 'k.', 'MarkerSize', 2);
grid on;
xlabel('Time (s)');
ylabel('rad.');
[h,icons] = legend('Angular deviation','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot normalized angular errors: TK case 3');

Figure_3 = figure(3);
plot(T, ERRTHD*w/d, 'k.', 'MarkerSize', 2);
grid on;
xlabel('Time (s)');
ylabel('$$s^{-1}$$');
[h,icons] = legend('Angular rate deviation','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot normalized angular rate errors: TK case 3');

Figure_4 = figure(4);
plot(T, ERRCX, 'r.', 'MarkerSize', 2); hold on;
plot(T, ERRCY, 'b.', 'MarkerSize', 2); hold off;
grid on;
xlabel('Time (s)');
[h,icons] = legend('X component deviation','Y component deviation','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot compass component errors: TK case 3');

l_f = 0.025;
w_r = 0.045;
XB = [4.5 5.5];
YB = [4.5 5.5];
[ d_f, d_r ] = lidar_calc(10 - c_p_case_3_tk(:,2), c_p_case_3_tk(:,1), c_p_case_3_tk(:,3) + pi/2, l_f, w_r, XB, YB);

LIDF = p_case_3_tk(:,3)*1/4096;
LIDR = p_case_3_tk(:,4)*1/4096;

DF = d_f;
DR = d_r;

ERRDF = LIDF - DF;
ERRDR = LIDR - DR;

Figure_5 = figure(5);
plot(T, ERRDF/d, 'r.', 'MarkerSize', 2); hold on;
plot(T, ERRDR/d, 'b.', 'MarkerSize', 2); hold off;
grid on;
xlabel('Time (s)');
ylabel('m/m');
[h,icons] = legend('Front LIDAR deviation','Right LIDAR deviation','location','best');
icons = findobj(icons,'Type','line');
icons = findobj(icons,'Marker','none','-xor');
set(icons,'MarkerSize',20);
title('Paperbot normalized distance sensor errors: TK case 3');
