function ddq = Manipolatore(q, dq, tau)
    % Unpack inputs
    q2 = q(2);
    dq1 = dq(1); 
    dq2 = dq(2);
    
    % Parametri del sistema
    m1 = 1.5;
    m2 = 1.5;
    l1 = 1.5;
    l2 = 1.5;
    a1 = l1 / 2;
    a2 = l2 / 2;
    I1 = 0.2;
    I2 = 0.01;
    
    % Dinamica del sistema
    p = m2 * a2 * (a2 * l1 * cos(q2));
    I1s = I1 + m1 * a1^2 + m2 * l1^2 + m2 * a2^2;
    I2s = I2 + m2 * a2^2;
    B = [I1s + 2 * m2 * l1 * a2 * cos(q2), p; 
         p, I2s];
    h = [-2 * m2 * l1 * a2 * sin(q2) * dq1 * dq2 - m2 * l1 * a2 * sin(q2) * dq1^2; 
         m2 * l1 * a2 * sin(q2) * dq1^2];
    ddq = B \ (tau - h);
end
