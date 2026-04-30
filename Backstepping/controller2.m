function phi2 = controller2(x, dphi1, phi1, x_3) % Parametri
    k2 = 2;
    %unpack
    x_1 = x(1);
    x_2 = x(2);
    z1=(x_3-phi1);
    % Controllore
    phi2 =x_1^2+dphi1+k2*z1-x_2^2;
    
end
