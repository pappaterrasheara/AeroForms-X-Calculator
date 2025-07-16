function utilities_menu()
% UTILITIES_MENU - Menu for aerospace utility functions

while true
    clc;
    fprintf('=== Utilities ===\n');
    fprintf('1. View Common Aerospace Constants\n');
    fprintf('2. Compute Standard Atmosphere at Altitude\n');
    fprintf('3. Unit Converter (Speed, Mass, Force, Pressure)\n');
    fprintf('4. Exit to Main Menu\n');

    choice = input('\nSelect an option (1–4): ');

    switch choice
        case 1  % Constants
            clc;
            C = constants();
            fprintf('--- Aerospace Constants ---\n');
            fprintf('Standard gravity (g0):           %.5f m/s²\n', C.g0);
            fprintf('Gravitational constant (G):      %.5e m³/kg/s²\n', C.G);
            fprintf('Specific gas constant for air:   %.3f J/kg·K\n', C.R_air);
            fprintf('Universal gas constant (R):      %.6f J/mol·K\n', C.R_universal);
            fprintf('Earth radius:                    %.0f m\n', C.Earth_radius);
            fprintf('Earth mass:                      %.3e kg\n', C.Earth_mass);
            fprintf('Standard sea-level pressure:     %.0f Pa\n', C.P0);
            fprintf('Standard sea-level temperature:  %.2f K\n', C.T0);
            pause;

        case 2  % Standard Atmosphere
            clc;
            h = input('Enter altitude (in meters, 0–11000 m): ');
            try
                [T, P, rho] = standard_atmosphere(h);
                fprintf('\nAt %.1f m altitude:\n', h);
                fprintf('Temperature: %.2f K\n', T);
                fprintf('Pressure:    %.2f Pa\n', P);
                fprintf('Density:     %.4f kg/m³\n', rho);
            catch ME
                fprintf('Error: %s\n', ME.message);
            end
            pause;

        case 3  % Unit Converter
            clc;
            value = input('Enter value to convert: ');
            from_unit = input('Enter original unit (e.g., ''m/s'', ''kg'', ''N''): ', 's');
            to_unit = input('Enter target unit (e.g., ''km/h'', ''lb'', ''lbf''): ', 's');
            try
                result = unit_converter(value, from_unit, to_unit);
                fprintf('Converted value: %.4f %s\n', result, to_unit);
            catch ME
                fprintf('Error: %s\n', ME.message);
            end
            pause;

        case 4
            disp('Returning to main menu...');
            pause(1);
            break;

        otherwise
            disp('Invalid option. Try again.');
            pause(1);
    end
end
end
