function v_e = exhaust_velocity(Isp, g0)
% Calculates exhaust velocity from specific impulse
% Inputs:
%   Isp - specific impulse (s)
%   g0  - standard gravity (9.81 m/s^2)
% Output:
%   v_e - exhaust velocity (m/s)

    v_e = Isp * g0;
end
