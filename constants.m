function C = constants()
% CONSTANTS returns a struct with commonly used aerospace constants
%
% Output:
%   C - struct with constants

    C.g0 = 9.80665;                % m/s²
    C.G = 6.67430e-11;            % m^3/kg/s^2
    C.R_air = 287.058;            % J/kg/K
    C.R_universal = 8.314462618;  % J/mol/K
    C.Earth_radius = 6371000;     % m
    C.Earth_mass = 5.972e24;      % kg
    C.P0 = 101325;                % Pa
    C.T0 = 288.15;                % K
end
