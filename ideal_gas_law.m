function P = ideal_gas_law(rho, R, T)
% IDEAL_GAS_LAW calculates pressure using P = ρ * R * T
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
