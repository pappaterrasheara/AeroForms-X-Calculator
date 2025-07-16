function thermodynamics_menu()
% THERMODYNAMICS_MENU - Menu for thermodynamic calculations

while true
    clc;
    fprintf('=== Thermodynamics Calculator ===\n');
    fprintf('1. Calculate Pressure (Ideal Gas Law)\n');
    fprintf('2. Calculate Isentropic Pressure\n');
    fprintf('3. Calculate Isentropic Temperature\n');
    fprintf('4. Calculate Specific Gas Constant (Cp - Cv)\n');
    fprintf('5. Calculate Carnot Thermal Efficiency\n');
    fprintf('6. Exit to Main Menu\n');

    choice = input('\nSelect an option (1–6): ');

    switch choice
        case 1  % Ideal Gas Law
            rho = input('Enter density (kg/m^3): ');
            R = input('Enter specific gas constant (J/kg·K): ');
            T = input('Enter temperature (K): ');
            P = ideal_gas_law(rho, R, T);
            fprintf('Pressure = %.3f Pa\n', P);
            pause;

        case 2  % Isentropic Pressure
            P1 = input('Enter initial pressure (Pa): ');
            M1 = input('Enter Mach number: ');
            gamma = input('Enter gamma (Cp/Cv): ');
            P2 = isentropic_pressure(P1, M1, gamma);
            fprintf('Static Pressure = %.3f Pa\n', P2);
            pause;

        case 3  % Isentropic Temperature
            T1 = input('Enter total temperature (K): ');
            M1 = input('Enter Mach number: ');
            gamma = input('Enter gamma (Cp/Cv): ');
            T2 = isentropic_temperature(T1, M1, gamma);
            fprintf('Static Temperature = %.3f K\n', T2);
            pause;

        case 4  % Specific Heat Relation
            Cp = input('Enter Cp (J/kg·K): ');
            Cv = input('Enter Cv (J/kg·K): ');
            R = specific_heat_relation(Cp, Cv);
            fprintf('Specific Gas Constant R = %.3f J/kg·K\n', R);
            pause;

        case 5  % Carnot Efficiency
            T_hot = input('Enter hot reservoir temperature (K): ');
            T_cold = input('Enter cold reservoir temperature (K): ');
            try
                eta = thermal_efficiency(T_hot, T_cold);
                fprintf('Thermal Efficiency = %.4f (fraction)\n', eta);
            catch ME
                fprintf('Error: %s\n', ME.message);
            end
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
