  Fs = 8000;
   dt = 1/Fs;
   StopTime = 0.05;
   t = (0:dt:StopTime-dt)';
   N = size(t,1);
   Fc = 60;
   phi = [ -2*pi/3 0 2*pi/3 ];
   Vrms = 120;
   
   x = Vrms*sqrt(2)*cos(2*pi*Fc*t*ones(1,3) + ones(N,1)*phi);
   figure(5);
   plot(t,x);
   
   grid on
   title('Three Phase Voltage')
   xlabel('Time')
   ylabel('Voltage')
   legend('V_b_n','V_a_n','V_c_n')
   