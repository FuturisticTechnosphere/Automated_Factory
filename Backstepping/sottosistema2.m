function dx = sistema_dinamico2(x,  phi_2)
    % Ingressi del sistema
    x_1 = x(1);
    x_2 = x(2);
    x_4 = phi_2;


    % Derivate
  dx3=  x_1^2-x_2^2-x_4;
    

    dx = dx3;
end
