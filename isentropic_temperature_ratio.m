function Tr = isentropic_temperature_ratio(M, gamma)
% ISENTROPIC_TEMPERATURE_RATIO calculates T0/T from Mach number and gamma
%
% Inputs:
%   M     - Mach number
%   gamma - ratio of specific heats
%
% Output:
%   Tr - total-to-static temperature ratio (dimensionless)

    Tr = 1 + ((gamma - 1) / 2) * M^2;
end
