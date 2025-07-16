function RC = climb_rate(V, gamma_deg)
% CLIMB_RATE calculates rate of climb: RC = V * sin(gamma)
%
% Inputs:
%   V         - true airspeed (m/s)
%   gamma_deg - flight path angle in degrees
%
% Output:
%   RC - climb rate (m/s)

    gamma_rad = deg2rad(gamma_deg);
    RC = V * sin(gamma_rad);
end
