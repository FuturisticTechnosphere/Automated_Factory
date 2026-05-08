function Ref = plannerM1(Stato, flag1, point)
    % Planner per il Muletto 1
    % Unpack
    x = Stato(1);
    y = Stato(2);
    
    % Tolleranza per considerare il punto raggiunto
    tol = 0.01;
    
    % Variabile persistente per l'indice del punto attuale
    persistent PosM1
    if isempty(PosM1)
        PosM1 = 1; % Inizializza al primo punto
    end
    
    % Coordinate del punto corrente
    xi = point(1, PosM1);
    yi = point(2, PosM1);
    
    % Calcolo della distanza dal punto corrente
    dist = sqrt((x - xi)^2 + (y - yi)^2);
    
    % Logica di switch tra i punti
    switch PosM1
        case 1
            if flag1
                PosM1 = 2; % Muletto in zona Pick uno
            end
        case 2
            if dist < tol
                PosM1 = 1; % Torna al primo punto
            end
    end
    Ref = point(:, PosM1);
end
