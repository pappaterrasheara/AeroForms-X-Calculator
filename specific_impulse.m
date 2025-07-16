function Isp = specific_impulse(v_e, g0)
% Calculates specific impulse
% Inputs:
%   v_e - effective exhaust velocity (m/s)
%   g0  - standard gravity (9.81 m/s^2)
% Output:
%   Isp - specific impulse (s)

    Isp = v_e / g0;
end
