%% Numerial tests
clear all
clc


%% MMC definition

C = 9000e-6;
N = 20;

SN = 100e6;
Vdc0 = 150e3;

L = 19e-3;
R = 1;

Lf = 20e-3;
Rf = 1;

f0 = 60;
w0 = 2*pi*f0;

Cf = 20e-6;

% structure representing the MMC
MMCstr = struct('C',C,'N',N,'SN',SN,'Vdc0',Vdc0,'L',L,'R',R,'Lf',Lf,'Rf',Rf,'w0',w0,'Cf',Cf);

s = tf('s');

%% Control Parameters: Current-controlled

kpi = 0.001;
Tii = 0.01;
kii = kpi/Tii;

Ci = kpi + kii/s;


%% Control Parameters: Single-loop voltage-controlled

kpv_sl = 0.000001;
Tiv_sl = 0.01;
kiv_sl = kpv_sl/Tiv_sl;



Cv_sl = kpv_sl + kiv_sl/s;


%% Control Parameters: Double-loop voltage-controlled 

kpi_dl = 0.001;
Tii_dl = 0.01;
kii_dl = kpi_dl/Tii_dl;

Ci_dl = kpi_dl + kii_dl/s;


kpv_dl = 0.01;
Tiv_dl = 0.01;
kiv_dl = kpv_dl/Tiv_dl;

Cv_dl = kpv_dl + kiv_dl/s;

%% Tests

M_i = MODEL_SRF_IC(MMCstr,Ci);
M_vsl = MODEL_SRF_VC_SL(MMCstr,Cv_sl);
M_vdl = MODEL_SRF_VC_DL(MMCstr,Cv_dl,Ci_dl);





