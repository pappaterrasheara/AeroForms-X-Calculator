function D = drag_force(rho, V, S, Cd)
% DRAG_FORCE Calculates drag force using the formula:
%   D = 0.5 * rho * V^2 * S * Cd

    D = 0.5 * rho * V^2 * S * Cd;
end
