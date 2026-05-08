function [flag3, flag4] = Sincro2(StatoBr, StatoN)
    % Sincronizzatore tra il braccio manipolatore e il nastro 
    % trasportatore
    
    % Variabile persistente per il contatore
    persistent Cont
    if isempty(Cont)
        Cont = 0;
    end
    
    % Variabile persistente per il task del nastro
    persistent TaskN
    if isempty(TaskN)
        TaskN = 0;
    end
    
    % Tolleranza
    tol = 0.01;
    
    % Condizione per il contatore: verifica se il braccio sia 
    % in posizione di Pick
    % e il pacco sia pronto sul nastro
    if abs(StatoBr(1) - pi/2) < tol && abs(StatoN - 3) < tol
        Cont = 1;
    else
        Cont = 0;
    end
    flag3 = Cont;
    
    % Condizione per il movimento del nastro: verifica se il 
    % braccio sia in posizione di Place e il nastro sia pronto 
    % per ricevere il pacco
    if abs(StatoBr(1) - pi/2) < tol && abs(StatoN - 10) < tol
        TaskN = 1;
    else
        TaskN = 0;
    end
    flag4 = TaskN;
end
