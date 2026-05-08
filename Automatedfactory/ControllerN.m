function u = ControllerN(x, x_d)
    % Guadagni di controllo
    tau = 0.9;
    kx2 = 0.8;
    
    % Traslazione
    z = x - x_d;
    
    % Legge di controllo
    u = x_d + z * (1 - tau * kx2);
end
