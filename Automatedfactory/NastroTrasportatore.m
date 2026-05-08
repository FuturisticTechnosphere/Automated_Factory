function dx = NastroTrasportatore(x, u, x_d)
    % Parametro del sistema
    tau = 0.9;
    
    % Traslazione
    z = x - x_d;
    
    % Dinamica del sistema
    dx = (u - z - x_d) / tau;
end
