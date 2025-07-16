function delta = beam_deflection(F, L, E, I)
% BEAM_DEFLECTION calculates beam deflection under load
%
% Using simple cantilever beam formula:
%   δ = (F * L^3) / (3 * E * I)
%
% Inputs:
%   F - applied force (N)
%   L - length of beam (m)
%   E - Young’s modulus (Pa)
%   I - moment of inertia of beam cross-section (m^4)
%
% Output:
%   delta - deflection (m)

    if E == 0 || I == 0
        error('Young''s modulus and moment of inertia cannot be zero.');
    end

    delta = (F * L^3) / (3 * E * I);
end
