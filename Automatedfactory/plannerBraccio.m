function [theta, idx] = plannerBr(q, flag3, flag4, flag1, flag2, u)
    % Unpack
    q1 = q(1);
    
    % Variabile persistente per la posizione angolare del braccio
    persistent PosBr
    if isempty(PosBr)
        PosBr = 1;
    end
    
    tol = 0.01;
    ref = [u(PosBr); 0];
    theta = ref;
    idx = PosBr;
    
    switch PosBr
        case 1
            % Muovi il braccio dalla posizione di Pick1 alla posizione di Place1
            if flag1
                PosBr = 2;
            end
        case 2
            % Muovi il braccio dalla posizione di Place1 alla posizione di Pick2
            if abs(q1 - ref(1)) < tol && flag3
                PosBr = 3;
            end
        case 3
            % Muovi il braccio dalla posizione di Pick2 alla posizione di Place2
            if flag2
                PosBr = 4;
            end
        case 4
            % Ricomincia il ciclo di lavoro
            if abs(q1 - ref(1)) < tol && flag4
                PosBr = 1;
            end
    end
end
