function v_escape = escape_velocity(G, M, r)
% ESCAPE_VELOCITY calculates escape velocity at radius r
%
% Inputs:
%   G - gravitational constant (m^3/kg/s^2)
%   M - mass of central body (kg)
%   r - radius from center of mass (m)
%
% Output:
%   v_escape - escape velocity (m/s)

    v_escape = sqrt(2 * G * M / r);
end
