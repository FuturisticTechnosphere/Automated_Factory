function [x_d, Contatore, PointIndex] = plannerN(x, flag1, flag2, flag3, flag4, N)
    tol = 0.01;
    
    persistent Npos
    if isempty(Npos)
        Npos = 2;    
    end
    
    persistent Counter
    if isempty(Counter)
        Counter = 0;
    end
    
    % Determina il numero di pacchi dentro i nastri
    switch Counter
        case 0
            if flag1
                Counter = 1;
            end
        case 1
            if flag2
                Counter = 2;
            end
        case 2
            if flag4
                Counter = 0;
            end
    end
    
    % Determina lo switch di posizioni del nastro
    xNd = N(Npos);
    switch Npos
        case 1
            if abs(x - xNd) < tol
                Npos = 2;
            end
        case 2
            if abs(x - xNd) < tol && flag3 && Counter == 2
                Npos = 1;
            end
    end
    
    x_d = xNd;
    Contatore = Counter;
    PointIndex = Npos;
end
