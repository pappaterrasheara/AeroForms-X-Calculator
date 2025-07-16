function F = thrust(m_dot, v_e, P_e, P_0, A_e)
% Calculate thrust using the general thrust equation
% Inputs:
%   m_dot - mass flow rate (kg/s)
%   v_e   - exhaust velocity (m/s)
%   P_e   - exit pressure (Pa)
%   P_0   - ambient pressure (Pa)
%   A_e   - exit area (m^2)
%
% Output:
%   F     - thrust (N)

    F = m_dot * v_e + (P_e - P_0) * A_e;
end
