function Pr = isentropic_pressure_ratio(M, gamma)
% ISENTROPIC_PRESSURE_RATIO calculates P0/P from Mach number and gamma
%
% Inputs:
%   M     - Mach number
%   gamma - ratio of specific heats (e.g. 1.4 for air)
%
% Output:
%   Pr - total-to-static pressure ratio (dimensionless)

    Pr = (1 + ((gamma - 1) / 2) * M^2)^(gamma / (gamma - 1));
end
