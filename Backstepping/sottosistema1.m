function dx = sistema_dinamico(x, phi1)
    % Ingressi del sistema
    x_1 = x(1);
    x_2 = x(2);
    x_3=phi1;
    


    % Derivate
  dx1 = x_1*(x_1^2+x_2^2-4)-x_2-x_1^3;
  dx2= x_2*(x_2^2+x_2^2-4)+x_1+x_3;
   
    

    dx = [dx1; dx2];
end
