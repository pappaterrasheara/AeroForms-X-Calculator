function thermo_gas_dynamics_menu()
% THERMO_GAS_DYNAMICS_MENU - Menu for thermo gas dynamics calculations

while true
    clc;
    fprintf('=== Thermo Gas Dynamics Calculator ===\n');
    fprintf('1. Calculate Ideal Gas Pressure (P = ρRT)\n');
    fprintf('2. Calculate Isentropic Pressure Ratio (P0/P)\n');
    fprintf('3. Calculate Isentropic Temperature Ratio (T0/T)\n');
    fprintf('4. Calculate Stagnation Pressure (P0)\n');
    fprintf('5. Calculate Stagnation Temperature (T0)\n');
    fprintf('6. Exit to Main Menu\n');

    choice = input('\nSelect an option (1–6): ');

    switch choice
        case 1  % Ideal Gas Pressure
            rho = input('Enter density (kg/m^3): ');
            R = input('Enter specific gas constant (J/kg·K): ');
            T = input('Enter temperature (K): ');
            P = ideal_gas_pressure(rho, R, T);
            fprintf('Ideal Gas Pressure = %.3f Pa\n', P);
            pause;

        case 2  % Isentropic Pressure Ratio
            M = input('Enter Mach number: ');
            gamma = input('Enter gamma (Cp/Cv): ');
            Pr = isentropic_pressure_ratio(M, gamma);
            fprintf('Isentropic Pressure Ratio (P0/P) = %.4f\n', Pr);
            pause;

        case 3  % Isentropic Temperature Ratio
            M = input('Enter Mach number: ');
            gamma = input('Enter gamma (Cp/Cv): ');
            Tr = isentropic_temperature_ratio(M, gamma);
            fprintf('Isentropic Temperature Ratio (T0/T) = %.4f\n', Tr);
            pause;

        case 4  % Stagnation Pressure
            P = input('Enter static pressure (Pa): ');
            M = input('Enter Mach number: ');
            gamma = input('Enter gamma (Cp/Cv): ');
            P0 = stagnation_pressure(P, M, gamma);
            fprintf('Stagnation Pressure (P0) = %.3f Pa\n', P0);
            pause;

        case 5  % Stagnation Temperature
            T = input('Enter static temperature (K): ');
            M = input('Enter Mach number: ');
            gamma = input('Enter gamma (Cp/Cv): ');
            T0 = stagnation_temperature(T, M, gamma);
            fprintf('Stagnation Temperature (T0) = %.3f K\n', T0);
            pause;

        case 6
            disp('Returning to main menu...');
            pause(1);
            break;

        otherwise
            disp('Invalid choice. Try again.');
            pause(1);
    end
end
end
