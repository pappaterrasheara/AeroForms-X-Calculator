function P = ideal_gas_pressure(rho, R, T)
% IDEAL_GAS_PRESSURE calculates pressure using the ideal gas law: P = ρRT
%
% Inputs:
%   rho - density (kg/m^3)
%   R   - specific gas constant (J/kg·K)
%   T   - temperature (K)
%
% Output:
%   P - pressure (Pa)

    P = rho * R * T;
end
