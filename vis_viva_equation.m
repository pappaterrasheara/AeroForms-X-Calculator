function v = vis_viva_equation(G, M, r, a)
% VIS_VIVA_EQUATION calculates orbital velocity at any point in orbit
%
% Inputs:
%   G - gravitational constant (m^3/kg/s^2)
%   M - mass of central body (kg)
%   r - current radius from center (m)
%   a - semi-major axis of orbit (m)
%
% Output:
%   v - orbital velocity at radius r (m/s)

    v = sqrt(G * M * (2 / r - 1 / a));
end
