function F = gravitational_force(G, M, m, r)
% GRAVITATIONAL_FORCE calculates Newton's gravitational force between two masses
%
% Inputs:
%   G - gravitational constant (m^3/kg/s^2)
%   M - mass of first body (kg)
%   m - mass of second body (kg)
%   r - distance between centers of mass (m)
%
% Output:
%   F - gravitational force (N)

    F = G * M * m / r^2;
end
