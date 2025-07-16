function eta = thermal_efficiency(T_hot, T_cold)
% THERMAL_EFFICIENCY calculates Carnot efficiency: η = 1 - (T_cold / T_hot)
%
% Inputs:
%   T_hot  - hot reservoir temperature (K)
%   T_cold - cold reservoir temperature (K)
%
% Output:
%   eta - efficiency (fraction between 0 and 1)

    if T_hot == 0
        error('Hot temperature cannot be zero.');
    end

    eta = 1 - (T_cold / T_hot);
end
