function m_dot = mass_flow_rate(F, v_e)
% Calculates mass flow rate from thrust and exhaust velocity
% Inputs:
%   F   - thrust (N)
%   v_e - exhaust velocity (m/s)
% Output:
%   m_dot - mass flow rate (kg/s)

    m_dot = F / v_e;
end
