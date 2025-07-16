function aerodynamics_menu()
% AERODYNAMICS_MENU - Interactive menu for aerodynamics calculations

while true
    clc;
    fprintf('=== Aerodynamics Calculator ===\n');
    fprintf('1. Calculate Drag Force\n');
    fprintf('2. Calculate Lift Force\n');
    fprintf('3. Calculate Dynamic Pressure\n');
    fprintf('4. Calculate Lift-to-Drag Ratio\n');
    fprintf('5. Calculate Mach Number\n');
    fprintf('6. Calculate Reynolds Number\n');
    fprintf('7. Exit to Main Menu\n');

    choice = input('\nSelect an option (1–7): ');

    switch choice
        case 1  % Drag Force
            rho = input('Enter air density (kg/m^3): ');
            V = input('Enter velocity (m/s): ');
            S = input('Enter reference area (m^2): ');
            Cd = input('Enter drag coefficient: ');
            D = drag_force(rho, V, S, Cd);
            fprintf('Drag Force = %.3f N\n', D);
            pause;

        case 2  % Lift Force
            rho = input('Enter air density (kg/m^3): ');
            V = input('Enter velocity (m/s): ');
            S = input('Enter wing area (m^2): ');
            Cl = input('Enter lift coefficient: ');
            L = lift_force(rho, V, S, Cl);
            fprintf('Lift Force = %.3f N\n', L);
            pause;

        case 3  % Dynamic Pressure
            rho = input('Enter air density (kg/m^3): ');
            V = input('Enter velocity (m/s): ');
            q = dynamic_pressure(rho, V);
            fprintf('Dynamic Pressure = %.3f Pa\n', q);
            pause;

        case 4  % Lift-to-Drag Ratio
            L = input('Enter lift force (N): ');
            D = input('Enter drag force (N): ');
            try
                ratio = lift_to_drag_ratio(L, D);
                fprintf('Lift-to-Drag Ratio = %.3f\n', ratio);
            catch ME
                fprintf('Error: %s\n', ME.message);
            end
            pause;

        case 5  % Mach Number
            V = input('Enter velocity (m/s): ');
            a = input('Enter speed of sound (m/s): ');
            try
                M = mach_number(V, a);
                fprintf('Mach Number = %.3f\n', M);
            catch ME
                fprintf('Error: %s\n', ME.message);
            end
            pause;

        case 6  % Reynolds Number
            rho = input('Enter air density (kg/m^3): ');
            V = input('Enter velocity (m/s): ');
            L = input('Enter characteristic length (m): ');
            mu = input('Enter dynamic viscosity (kg/m·s): ');
            try
                Re = reynolds_number(rho, V, L, mu);
                fprintf('Reynolds Number = %.3e\n', Re);
            catch ME
                fprintf('Error: %s\n', ME.message);
            end
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
