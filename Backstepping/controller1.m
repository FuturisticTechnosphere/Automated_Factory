function phi_1 = controller1(x) % Parametri
    k1 = 2; % Guadagno del controllore
    %unpack
    x_1 = x(1);
    x_2 = x(2);
    
    % Control Law
    phi_1= -2*x_1^2*x_2-x_2^3-k1*x_2;
 end

