function a = equation_of_motion(F, m)
% EQUATION_OF_MOTION calculates acceleration using Newton's 2nd law: a = F / m
%
% Inputs:
%   F - total net force (N)
%   m - mass (kg)
%
% Output:
%   a - acceleration (m/s^2)

    if m == 0
        error('Mass cannot be zero.');
    end

    a = F / m;
end
