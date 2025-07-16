function delta_v = rocket_equation(v_e, m0, mf)
% Tsiolkovsky Rocket Equation
% Inputs:
%   v_e - effective exhaust velocity (m/s)
%   m0  - initial mass (kg)
%   mf  - final mass (kg)
% Output:
%   delta_v - change in velocity (m/s)

    delta_v = v_e * log(m0 / mf);
end
