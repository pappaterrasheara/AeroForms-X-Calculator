function t = burn_time(m0, mf, m_dot)
% Calculates burn time
% Inputs:
%   m0    - initial mass (kg)
%   mf    - final mass (kg)
%   m_dot - mass flow rate (kg/s)
% Output:
%   t     - burn time (s)

    t = (m0 - mf) / m_dot;
end
