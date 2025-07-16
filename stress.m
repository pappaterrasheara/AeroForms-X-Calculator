function sigma = stress(F, A)
% STRESS calculates stress (σ = F / A)
%
% Inputs:
%   F - force applied (N)
%   A - cross-sectional area (m^2)
%
% Output:
%   sigma - stress (Pa)

    if A == 0
        error('Area cannot be zero.');
    end

    sigma = F / A;
end
