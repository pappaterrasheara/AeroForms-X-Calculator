function M = moment_equation(I, alpha)
% MOMENT_EQUATION computes the net moment from moment of inertia and angular acceleration
%
% Formula: ΣM = I * α
%
% Inputs:
%   I     - moment of inertia (kg·m²)
%   alpha - angular acceleration (rad/s²)
%
% Output:
%   M - moment (N·m)

    M = I * alpha;
end
