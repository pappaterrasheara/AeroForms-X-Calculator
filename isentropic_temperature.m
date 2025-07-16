function T2 = isentropic_temperature(T1, M1, gamma)
% ISENTROPIC_TEMPERATURE calculates static temperature from total temperature
%
% Inputs:
%   T1    - total temperature (K)
%   M1    - Mach number
%   gamma - ratio of specific heats
%
% Output:
%   T2 - static temperature (K)

    T2 = T1 / (1 + 0.5 * (gamma - 1) * M1^2);
end
