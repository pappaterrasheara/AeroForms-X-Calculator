function flight_mechanics_menu()
% FLIGHT_MECHANICS_MENU - Menu for flight mechanics calculations

while true
    clc;
    fprintf('=== Flight Mechanics Calculator ===\n');
    fprintf('1. Calculate Climb Rate\n');
    fprintf('2. Calculate Acceleration (Equation of Motion)\n');
    fprintf('3. Calculate Load Factor\n');
    fprintf('4. Calculate Turn Radius\n');
    fprintf('5. Exit to Main Menu\n');

    choice = input('\nSelect an option (1–5): ');

    switch choice
        case 1  % Climb Rate
            V = input('Enter true airspeed (m/s): ');
            gamma_deg = input('Enter flight path angle (degrees): ');
            RC = climb_rate(V, gamma_deg);
            fprintf('Climb Rate = %.3f m/s\n', RC);
            pause;

        case 2  % Equation of Motion
            F = input('Enter net force (N): ');
            m = input('Enter mass (kg): ');
            try
                a = equation_of_motion(F, m);
                fprintf('Acceleration = %.3f m/s^2\n', a);
            catch ME
                fprintf('Error: %s\n', ME.message);
            end
            pause;

        case 3  % Load Factor
            L = input('Enter lift force (N): ');
            W = input('Enter weight (N): ');
            try
                n = load_factor(L, W);
                fprintf('Load Factor = %.3f (dimensionless)\n', n);
            catch ME
                fprintf('Error: %s\n', ME.message);
            end
            pause;

        case 4  % Turn Radius
            V = input('Enter velocity (m/s): ');
            g = input('Enter gravity (m/s^2): ');
            theta_deg = input('Enter bank angle (degrees): ');
            try
                R = turn_radius(V, g, theta_deg);
                fprintf('Turn Radius = %.3f m\n', R);
            catch ME
                fprintf('Error: %s\n', ME.message);
            end
            pause;

        case 5
            disp('Returning to main menu...');
            pause(1);
            break;

        otherwise
            disp('Invalid choice. Try again.');
            pause(1);
    end
end
end
