function u = ControllerM1(Stato, Ref)
    % Unpack
    x = Stato(1);
    y = Stato(2);
    psi = Stato(3);
    xi = Ref(1);
    yi = Ref(2);
    
    % Guadagni di controllo
    kr = 1.1;
    kb = 0.2;
    
    % Traslazione
    phi = atan2((y - yi), (x - xi));
    beta = pi - (psi - phi);
    rho = sqrt((x - xi)^2 + (y - yi)^2);
    
    % Legge di controllo
    v = rho * kr * cos(beta);
    omega = kb * beta + kr * cos(beta) * (phi * sinc(beta) + sin(beta));
    u = [v; omega];
end
