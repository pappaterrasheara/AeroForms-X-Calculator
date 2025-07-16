function L = lift_force(rho, V, S, Cl)
% LIFT_FORCE Calculates lift force using the formula:
%   L = 0.5 * rho * V^2 * S * Cl
%
% Inputs:
%   rho - air density (kg/m^3)
%   V   - velocity (m/s)
%   S   - wing surface area (m^2)
%   Cl  - lift coefficient
%
% Output:
%   L   - lift force (N)

    L = 0.5 * rho * V^2 * S * Cl;
end
