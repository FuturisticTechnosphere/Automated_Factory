function dx = sistema_dinamico(x, phi, x_4)
    % Ingressi del sistema
    x_1 = x(1);
   
    
    u = phi;


    % Derivate
     dx4= -x_1^2+3*x_4^2+u;
    

    dx = dx4;
end
