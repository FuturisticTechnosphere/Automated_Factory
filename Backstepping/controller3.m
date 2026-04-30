function phi = controller3(x, dphi2, phi2, x_4) % Parametri
    k3 = 2;
    %unpack
    x_1 = x(1);
    
    z2 = x_4 - phi2;
    % Controllore
    phi = -k3*z2+dphi2-3*x_4^2-x_1^2;
end

