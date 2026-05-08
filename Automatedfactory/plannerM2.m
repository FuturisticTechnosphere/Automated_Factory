function Ref = plannerM2(Stato, flag2, point)
    % Planner per il Muletto 2
    % Unpack
    x = Stato(1);
    y = Stato(2);
    
    % Tolleranza per considerare il punto raggiunto
    tol = 0.01;
    
    % Variabile persistente per l'indice del punto attuale
    persistent PosM2
    if isempty(PosM2)
        PosM2 = 1; % Inizializza al primo punto
    end
    
    % Coordinate del punto corrente
    xi = point(1, PosM2);
    yi = point(2, PosM2);
    
    % Calcolo della distanza dal punto corrente
    dist = sqrt((x - xi)^2 + (y - yi)^2);
    
    % Logica di switch tra le posizioni raggiungibili dal muletto
    switch PosM2
        case 1
            if flag2
                PosM2 = 2; % Muletto in zona Pick2
            end
        case 2
            if dist < tol
                PosM2 = 1; % Torna al primo punto
            end
    end
    Ref = point(:, PosM2);
end
