%% PART B

s = tf('s');
Gp = 50/((s+1)*(s+2)*(s+5));
Gc = (0.7968*s+1)/(0.06895*s+1);
OLTF = Gp*Gc;
CLTF = feedback(OLTF,1);
margin(OLTF);
figure(2)
step(CLTF)
stepinfo(CLTF)

%% PART D

s = tf('s');
Gp = 50/((s+1)*(s+2)*(s+5));
Gc = (5*s+1)/(7.342*s+1);
OLTF = Gp*Gc;
CLTF = feedback(OLTF,1);
step(CLTF)
stepinfo(CLTF)
figure(2)
margin(OLTF)
[Gm,Pm,Wgm,Wpm] = margin(OLTF);
fprintf('Gain margin %.2f \n', Gm)
fprintf('Phase margin %.2f \n', Pm)


%% PART E

s = tf('s');
Gp = 50/((s+1)*(s+2)*(s+5));
Gc = (2.1213)+(0.6505*s);
OLTF = Gc*Gp;
CLTF = feedback(OLTF,1);
step(CLTF)
stepinfo(CLTF)
[Gm,Pm,Wgm,Wpm] = margin(OLTF);
figure(2)
margin(OLTF)
fprintf('Gain margin %.2f \n', Gm)
fprintf('Phase margin %.2f \n', Pm)

%% PART F -> PID is doing more stuff i.e. longer Ts (cant tune gains because it will fuck the Pm)

s = tf('s');
Gp = 50/((s+1)*(s+2)*(s+5));
Gc = 2.1213 + (0.04/s) + (0.6521*s);
OLTF = Gc*Gp;
CLTF = feedback(OLTF,1);
step(CLTF)
stepinfo(CLTF)
figure(2)
margin(OLTF)

[Gm,Pm,Wgm,Wpm] = margin(OLTF);
fprintf('Gain margin %.2f \n', Gm)
fprintf('Phase margin %.2f \n', Pm)

%% PART G

s = tf('s');
Gp = 50/((s+1)*(s+2)*(s+5));
Gc = 0.6812+(0.13624/s);
OLTF = Gc*Gp;
CLTF = feedback(OLTF,1);
step(CLTF)
stepinfo(CLTF);
[Gm,Pm,Wgm,Wpm] = margin(OLTF);
figure(2)
margin(OLTF)
fprintf('Gain margin %.2f \n', Gm)
fprintf('Phase margin %.2f \n', Pm)

%% PART H

% Part b
s = tf('s');
Gp = 50/((s+1)*(s+2)*(s+5));
 
Gcb = (0.795*s+1)/(0.0688*s+1);
OLb = Gp*Gcb;
CLb = feedback(OLb, 1);
 
% Part d
Gcd = (s+0.1)/(3.125*s+0.1);
OLd = Gp*Gcd;
CLd = feedback(OLd, 1);
 
% Part e
Gce = (2.12+0.649*s);
OLe = Gp*Gce;
CLe = feedback(OLe, 1);
 
% Part f
Gcf = (2.12+0.04/s+0.651*s);
OLf = Gp*Gcf;
CLf = feedback(OLf, 1);
 
% Part g
Gcg = (0.681+0.136/s);
OLg = Gp*Gcg;
CLg = feedback(OLg, 1);
 
% Step Response of all compensated systems   
step(CLb, CLc, CLd, CLe, CLf, CLg)
legend('Phase-lead Analytical', 'Phase-lag Analytical', 'PD', 'PID', 'PI');
ylim([0.6 1.2])
xlim([0 200])
title('Compensated System Responses')

