function dStato = CinematicaM2(Stato, u)
    % Unpack
    x = Stato(1);
    y = Stato(2);
    psi = Stato(3);
    v = u(1);
    omega = u(2);
    
    % Dinamica del muletto 2
    dStato = [v * cos(psi); 
              v * sin(psi); 
              omega];
end
