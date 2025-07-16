function v = orbital_velocity(G, M, r)
% ORBITAL_VELOCITY calculates orbital velocity for a circular orbit
%
% Inputs:
%   G - gravitational constant (m^3/kg/s^2)
%   M - mass of central body (kg)
%   r - radius from center of mass (m)
%
% Output:
%   v - orbital velocity (m/s)

    v = sqrt(G * M / r);
end
