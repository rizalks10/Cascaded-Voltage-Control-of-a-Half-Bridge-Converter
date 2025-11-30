Uin = 24;
Uout = 12;
D = Uout/Uin;         % 50% duty cycle
delta_il = 0.2; %       20% permissible inductor current ripple
delta_uout = 0.02; %    2% permissible output voltage ripple    
R_Load = 5;
R_Change = 10;
R = 0.8;
fsw = 10000;          % 10 kHz
wsw = 2*pi*fsw;		%Bandwith system
wcc = wsw/10;		%Bandwith current control
wcv = wcc/10;		%Bandwith Voltage control
Il = Uout/R_Load;
i_ripple = 0.2 * Il;
v_ripple = 0.02 * Uout;
alfa = 1;

L = (Uout * (1-D))/(i_ripple * fsw);
C = (Uout * (1-D))/(8 * L * v_ripple * fsw^2);

%Outer Control
Outer_Kp = wcv*C;
Outer_Ki = alfa*wcv*Outer_Kp;

%Inner Control
Inner_Kp = wcc*L;
Inner_Ki = alfa*wcc*Inner_Kp;
