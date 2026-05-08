function dStato = CinematicaM1(Stato, u)
    % Unpack
    x = Stato(1);
    y = Stato(2);
    psi = Stato(3);
    v = u(1);
    omega = u(2);
    
    % Dinamica del Muletto1
    dStato = [v * cos(psi); 
              v * sin(psi); 
              omega];
end
