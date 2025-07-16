function [T, P, rho] = standard_atmosphere(h)
% STANDARD_ATMOSPHERE returns T (K), P (Pa), and rho (kg/m^3) at altitude h (m)
% Valid for 0 ≤ h ≤ 11,000 m (ISA Troposphere)
%
% Inputs:
%   h - altitude above sea level (m)
%
% Outputs:
%   T   - temperature (K)
%   P   - pressure (Pa)
%   rho - air density (kg/m^3)

    % Constants
    T0 = 288.15;     % K
    P0 = 101325;     % Pa
    g = 9.80665;     % m/s²
    L = 0.0065;      % K/m (lapse rate)
    R = 287.058;     % J/kg·K

    if h < 0 || h > 11000
        warning('This model is valid only from 0 to 11 km. Results may be inaccurate.');
    end

    T = T0 - L * h;
    P = P0 * (T / T0)^(g / (R * L));
    rho = P / (R * T);
end
