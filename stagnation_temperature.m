function T0 = stagnation_temperature(T, M, gamma)
% STAGNATION_TEMPERATURE calculates T0 = T * (1 + ((γ - 1)/2) * M^2)
%
% Inputs:
%   T     - static temperature (K)
%   M     - Mach number
%   gamma - ratio of specific heats
%
% Output:
%   T0 - stagnation (total) temperature (K)

    T0 = T * (1 + ((gamma - 1) / 2) * M^2);
end
