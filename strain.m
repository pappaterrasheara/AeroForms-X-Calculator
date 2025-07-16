function epsilon = strain(delta_L, L)
% STRAIN calculates strain (ε = ΔL / L)
%
% Inputs:
%   delta_L - change in length (m)
%   L       - original length (m)
%
% Output:
%   epsilon - strain (dimensionless)

    if L == 0
        error('Original length cannot be zero.');
    end

    epsilon = delta_L / L;
end
