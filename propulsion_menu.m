function propulsion_menu()
% PROPULSION_MENU - Menu for propulsion system calculations

while true
    clc;
    fprintf('=== Propulsion Calculator ===\n');
    fprintf('1. Calculate Thrust\n');
    fprintf('2. Calculate Burn Time\n');
    fprintf('3. Calculate Exhaust Velocity\n');
    fprintf('4. Calculate Mass Flow Rate\n');
    fprintf('5. Calculate Specific Impulse\n');
    fprintf('6. Calculate Delta-V (Rocket Equation)\n');
    fprintf('7. Exit to Main Menu\n');

    choice = input('\nSelect an option (1–7): ');

    switch choice
        case 1  % Thrust
            m_dot = input('Enter mass flow rate (kg/s): ');
            v_e = input('Enter exhaust velocity (m/s): ');
            P_e = input('Enter exit pressure (Pa): ');
            P_0 = input('Enter ambient pressure (Pa): ');
            A_e = input('Enter exit area (m^2): ');
            F = thrust(m_dot, v_e, P_e, P_0, A_e);
            fprintf('Thrust = %.3f N\n', F);
            pause;

        case 2  % Burn Time
            m0 = input('Enter initial mass (kg): ');
            mf = input('Enter final mass (kg): ');
            m_dot = input('Enter mass flow rate (kg/s): ');
            t = burn_time(m0, mf, m_dot);
            fprintf('Burn Time = %.3f s\n', t);
            pause;

        case 3  % Exhaust Velocity
            Isp = input('Enter specific impulse (s): ');
            g0 = input('Enter standard gravity (m/s^2): ');
            v_e = exhaust_velocity(Isp, g0);
            fprintf('Exhaust Velocity = %.3f m/s\n', v_e);
            pause;

        case 4  % Mass Flow Rate
            F = input('Enter thrust (N): ');
            v_e = input('Enter exhaust velocity (m/s): ');
            m_dot = mass_flow_rate(F, v_e);
            fprintf('Mass Flow Rate = %.3f kg/s\n', m_dot);
            pause;

        case 5  % Specific Impulse
            v_e = input('Enter exhaust velocity (m/s): ');
            g0 = input('Enter standard gravity (m/s^2): ');
            Isp = specific_impulse(v_e, g0);
            fprintf('Specific Impulse = %.3f s\n', Isp);
            pause;

        case 6  % Rocket Equation (Delta-V)
            v_e = input('Enter exhaust velocity (m/s): ');
            m0 = input('Enter initial mass (kg): ');
            mf = input('Enter final mass (kg): ');
            delta_v = rocket_equation(v_e, m0, mf);
            fprintf('Delta-V = %.3f m/s\n', delta_v);
            pause;

        case 7
            disp('Returning to main menu...');
            pause(1);
            break;

        otherwise
            disp('Invalid choice. Try again.');
            pause(1);
    end
end
end
