function P2 = isentropic_pressure(P1, M1, gamma)
% ISENTROPIC_PRESSURE calculates pressure ratio across an isentropic flow
%
% Inputs:
%   P1    - initial pressure (Pa)
%   M1    - Mach number
%   gamma - ratio of specific heats (Cp/Cv)
%
% Output:
%   P2 - static pressure (Pa)

    P2 = P1 * (1 + 0.5 * (gamma - 1) * M1^2)^(-gamma / (gamma - 1));
end
