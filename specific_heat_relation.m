function R = specific_heat_relation(Cp, Cv)
% SPECIFIC_HEAT_RELATION calculates specific gas constant: R = Cp - Cv
%
% Inputs:
%   Cp - specific heat at constant pressure (J/kg·K)
%   Cv - specific heat at constant volume (J/kg·K)
%
% Output:
%   R - gas constant (J/kg·K)

    R = Cp - Cv;
end
