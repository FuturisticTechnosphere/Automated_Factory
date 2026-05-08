function [flagA, flagB] = Sincro1(StatoBr, StatoM2, StatoM1)
    % Sincronizzatore tra il braccio manipolatore e i muletti
    
    % Variabile persistente per i task del primo muletto
    persistent Task1
    if isempty(Task1)
        Task1 = 0;
    end
    
    % Variabile persistente per i task del secondo muletto
    persistent Task2
    if isempty(Task2)
        Task2 = 0;
    end
    
    % Tolleranza
    tol = 0.01;
    
    % Primo controllo: verifica se il braccio e il muletto 1 
    % sono in posizione di Pick1
    if abs(StatoBr(1) - pi) < tol && abs(StatoM1(1) - (-3)) < tol
        Task1 = 1;
    else
        Task1 = 0;
    end
    flagA = Task1;
    
    % Secondo controllo: verifica se il braccio e il muletto 2 
    % sono in posizione di Pick2
    if abs(StatoBr(1)) < tol && abs(StatoM2(1) - (3)) < tol
        Task2 = 1;
    else
        Task2 = 0;
    end
    flagB = Task2;
end
