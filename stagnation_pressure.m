function P0 = stagnation_pressure(P, M, gamma)
% STAGNATION_PRESSURE calculates total pressure from static pressure
%
% Inputs:
%   P     - static pressure (Pa)
%   M     - Mach number
%   gamma - ratio of specific heats
%
% Output:
%   P0 - stagnation pressure (Pa)

    ratio = isentropic_pressure_ratio(M, gamma);
    P0 = P * ratio;
end
