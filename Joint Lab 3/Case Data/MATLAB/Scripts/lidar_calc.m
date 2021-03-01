function [ d_f, d_r ] = lidar_calc( X, Y, TH, l_f, w_r, XB, YB )

x_f = X + l_f * sin(TH);
y_f = Y + l_f * cos(TH);

x_r = X + w_r * cos(TH);
y_r = Y + w_r * sin(TH);

XRf = XB(2) - x_f;
YUf = YB(2) - y_f;
XLf = XB(1) - x_f;
YLf = YB(1) - y_f;

XRr = XB(2) - x_r;
YUr = YB(2) - y_r;
XLr = XB(1) - x_r;
YLr = YB(1) - y_r;

d_f = NaN(length(X),1);
d_r = NaN(length(X),1);

TH = mod(TH, 2*pi);
TH2 = mod(TH - pi/2, 2*pi);

for i = 1:length(X)
    
    th1 = mod(atan2(YUr(i),XRr(i)),2*pi);
    th2 = mod(atan2(YUr(i),XLr(i)),2*pi);
    th3 = mod(atan2(YLr(i),XLr(i)),2*pi);
    th4 = mod(atan2(YLr(i),XRr(i)),2*pi);
    
    if TH(i) > th1 && TH(i) <= th2
        d_f(i) = YUf(i)/sin(TH(i));
    elseif TH(i) > th2 && TH(i) <= th3
        d_f(i) = XLf(i)/cos(TH(i));
    elseif TH(i) > th3 && TH(i) <= th4
        d_f(i) = YLf(i)/sin(TH(i));
    else
        d_f(i) = XRf(i)/cos(TH(i));
    end

    if TH2(i) > th1 && TH2(i) <= th2
        d_r(i) = YUr(i)/sin(TH(i) - pi/2);
    elseif TH2(i) > th2 && TH2(i) <= th3
        d_r(i) = XLr(i)/cos(TH(i) - pi/2);
    elseif TH2(i) > th3 && TH2(i) <= th4
        d_r(i) = YLr(i)/sin(TH(i) - pi/2);
    else
        d_r(i) = XRr(i)/cos(TH(i) - pi/2);
    end

end