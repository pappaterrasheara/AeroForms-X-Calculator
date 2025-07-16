function u = pid_controller(Kp, Ki, Kd, e, e_prev, integral_e, dt)
% PID_CONTROLLER computes PID control input
%
% Formula: u(t) = Kp*e + Ki*∫e dt + Kd*de/dt
%
% Inputs:
%   Kp         - proportional gain
%   Ki         - integral gain
%   Kd         - derivative gain
%   e          - current error
%   e_prev     - previous error
%   integral_e - cumulative error (integral of e)
%   dt         - time step (s)
%
% Output:
%   u - control output

    derivative = (e - e_prev) / dt;
    integral_e = integral_e + e * dt;

    u = Kp * e + Ki * integral_e + Kd * derivative;
end
