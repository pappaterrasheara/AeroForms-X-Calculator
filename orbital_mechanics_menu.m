function orbital_mechanics_menu()
% ORBITAL_MECHANICS_MENU - Menu for orbital mechanics calculations

while true
    clc;
    fprintf('=== Orbital Mechanics Calculator ===\n');
    fprintf('1. Calculate Escape Velocity\n');
    fprintf('2. Calculate Gravitational Force\n');
    fprintf('3. Calculate Orbital Velocity (Circular Orbit)\n');
    fprintf('4. Calculate Vis-Viva Velocity\n');
    fprintf('5. Calculate Hohmann Transfer ΔV\n');
    fprintf('6. Calculate Orbital Period (Kepler''s Third Law)\n');
    fprintf('7. Exit to Main Menu\n');

    choice = input('\nSelect an option (1–7): ');

    switch choice
        case 1  % Escape Velocity
            G = input('Enter gravitational constant G (m^3/kg/s^2): ');
            M = input('Enter mass of central body (kg): ');
            r = input('Enter radius from center of mass (m): ');
            v_escape = escape_velocity(G, M, r);
            fprintf('Escape Velocity = %.3f m/s\n', v_escape);
            pause;

        case 2  % Gravitational Force
            G = input('Enter gravitational constant G (m^3/kg/s^2): ');
            M = input('Enter mass of first body (kg): ');
            m = input('Enter mass of second body (kg): ');
            r = input('Enter distance between centers of mass (m): ');
            F = gravitational_force(G, M, m, r);
            fprintf('Gravitational Force = %.3f N\n', F);
            pause;

        case 3  % Orbital Velocity (circular)
            G = input('Enter gravitational constant G (m^3/kg/s^2): ');
            M = input('Enter mass of central body (kg): ');
            r = input('Enter radius from center of mass (m): ');
            v = orbital_velocity(G, M, r);
            fprintf('Orbital Velocity = %.3f m/s\n', v);
            pause;

        case 4  % Vis-Viva Equation
            G = input('Enter gravitational constant G (m^3/kg/s^2): ');
            M = input('Enter mass of central body (kg): ');
            r = input('Enter current orbital radius (m): ');
            a = input('Enter semi-major axis of orbit (m): ');
            v = vis_viva_equation(G, M, r, a);
            fprintf('Orbital Velocity (Vis-Viva) = %.3f m/s\n', v);
            pause;

        case 5  % Hohmann Transfer Delta-V
            G = input('Enter gravitational constant G (m^3/kg/s^2): ');
            M = input('Enter mass of central body (kg): ');
            r1 = input('Enter initial orbit radius (m): ');
            r2 = input('Enter target orbit radius (m): ');
            [delta_v1, delta_v2] = hohmann_transfer_delta_v(G, M, r1, r2);
            fprintf('Delta-V1 (to transfer orbit) = %.3f m/s\n', delta_v1);
            fprintf('Delta-V2 (to circularize)     = %.3f m/s\n', delta_v2);
            pause;

        case 6  % Kepler's Third Law
            a = input('Enter semi-major axis (m): ');
            mu = input('Enter standard gravitational parameter μ (m^3/s^2): ');
            T = kepler_third_law(a, mu);
            fprintf('Orbital Period = %.3f s\n', T);
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
