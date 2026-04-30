function phi1 = controller(x) % Parametri
    %Guadagno del controllore
    k1=2;

    %unpack
    x1 = x(1);
    x2 = x(2);
    
    %Controllore
    phi1=-x2^3-2*x1^2*x2-k1*x2;
end
