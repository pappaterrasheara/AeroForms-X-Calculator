function sigma = hookies_law(E, epsilon)
% HOOKES_LAW calculates stress using Hooke’s Law (σ = E * ε)
%
% Inputs:
%   E       - Young’s modulus (Pa)
%   epsilon - strain (dimensionless)
%
% Output:
%   sigma   - stress (Pa)

    sigma = E * epsilon;
end
