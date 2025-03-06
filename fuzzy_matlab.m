clear
close all
clc

Umax = 0.5;
Kkr = 1.146;
Tkr = 59.51;

%klasican PID
Kp = 0.6*Kkr;
Ti = Tkr/2;
Td = Tkr/8;

%fuzzy P
KuP = Umax;
KpP = Kp/KuP;

%fuzzy PD
KuPD = Umax/2;
KpPD = Kp/KuPD;
KdPD = Kp*Td/KuPD;

%fuzzy PID
KpPID = 0.25;
KuPID = Kp/KpPID;
KdPID = Kp*Td/KuPID;
KiPID = Kp/(Ti*KuPID);

%podesavanje parametara
Kuopt = KuPID*0.2;
