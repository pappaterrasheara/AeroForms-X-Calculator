function R = turn_radius(V, g, theta_deg)
% TURN_RADIUS calculates radius of a banking turn: R = V^2 / (g * tan(theta))
%
% Inputs:
%   V         - velocity (m/s)
%   g         - gravity (m/s^2)
%   theta_deg - bank angle in degrees
%
% Output:
%   R - turning radius (m)

    theta_rad = deg2rad(theta_deg);
    if tan(theta_rad) == 0
        error('Bank angle cannot be 0°.');
    end

    R = V^2 / (g * tan(theta_rad));
end
