function [delta_v1, delta_v2] = hohmann_transfer_delta_v(G, M, r1, r2)
% HOHMANN_TRANSFER_DELTA_V calculates velocity changes for a Hohmann transfer orbit
%
% Inputs:
%   G  - gravitational constant (m^3/kg/s^2)
%   M  - mass of central body (kg)
%   r1 - radius of initial orbit (m)
%   r2 - radius of target orbit (m)
%
% Outputs:
%   delta_v1 - velocity change to transfer orbit (m/s)
%   delta_v2 - velocity change to circularize at target orbit (m/s)
%
% Uses vis-viva equation for velocities.

    mu = G * M;

    v1 = sqrt(mu / r1);
    v_transfer_perigee = sqrt(2 * mu * r2 / (r1 * (r1 + r2)));
    delta_v1 = v_transfer_perigee - v1;

    v2 = sqrt(mu / r2);
    v_transfer_apogee = sqrt(2 * mu * r1 / (r2 * (r1 + r2)));
    delta_v2 = v2 - v_transfer_apogee;
end
