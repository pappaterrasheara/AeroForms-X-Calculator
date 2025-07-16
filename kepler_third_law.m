function T = kepler_third_law(a, mu)
% KEPLER_THIRD_LAW calculates orbital period based on semi-major axis
%
% Inputs:
%   a  - semi-major axis of orbit (m)
%   mu - standard gravitational parameter = G * M (m^3/s^2)
%
% Output:
%   T - orbital period (s)
%
% Formula: T = 2 * pi * sqrt(a^3 / mu)

    T = 2 * pi * sqrt(a^3 / mu);
end
