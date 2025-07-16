function [Cm_alpha, Cn_beta] = stability_derivatives(Cm_alpha_input, Cn_beta_input)
% STABILITY_DERIVATIVES returns provided pitch and yaw stability derivatives
% Used for demonstration and modular extension later for full dynamic modeling
%
% Inputs:
%   Cm_alpha_input - pitching moment coefficient derivative w.r.t angle of attack
%   Cn_beta_input  - yawing moment coefficient derivative w.r.t sideslip
%
% Outputs:
%   Cm_alpha - pitching moment derivative (1/rad)
%   Cn_beta  - yawing moment derivative (1/rad)

    Cm_alpha = Cm_alpha_input;
    Cn_beta = Cn_beta_input;
end
