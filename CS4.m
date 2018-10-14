%% Part 1a - Uncompensated System
s = tf('s');
x = 21/((s+1)*(s+3)*s);
subplot(2,1,1);
rlocus(x)
title("Uncompensated");
xlim([-10,1])
ylim([-5,5])


% Part 1c - Phase-Lead compensated system
x = (0.9033*((s+1.17)/(s+7.05)))*(21/((s+1)*(s+3)*s));
subplot(2,1,2);
rlocus(x)
title("Phase-Lead Compensated");
xlim([-10,1])
ylim([-5,5])


%% Part 2b - PD compensated system

% plotting uncompensated root locus
s = tf('s');
x = 21/((s+1)*(s+3)*s);
subplot(2,1,1);
rlocus(x)
title("Uncompensated");
xlim([-10,1])
ylim([-5,5])

% plotting compensated root locus
x = ((4/21)+(3/21)*s)*(21/((s+1)*(s+3)*s));
subplot(2,1,2);
rlocus(x)
title("PD Compensated");
xlim([-10,1])
ylim([-5,5])



%% Part 3a - Uncompensated system

s = tf('s');
x = 50/((s+1)*(s+2)*(s+10))
subplot(3,1,1)
rlocus(x)
title("Uncompensated System");

% Part 3f - closed loop poles

% compensator s=-0.05
s = tf('s');
x = ((50*(0.377))/((s+1)*(s+2)*(s+10))) * (0.126*((s+0.05)/(s+0.0063)))
subplot(3,1,2);
rlocus(x)
title("Compensated System - s = -0.05");

% compensator s=-0.2 
s = tf('s');
x = ((50*(0.377))/((s+1)*(s+2)*(s+10))) * (0.126*((s+0.2)/(s+0.0252)))
subplot(3,1,3);
rlocus(x)
title("Compensated System - s = -0.2");



