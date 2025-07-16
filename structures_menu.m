function structures_menu()
% STRUCTURES_MENU - Menu for structures and materials calculations

while true
    clc;
    fprintf('=== Structures & Materials Calculator ===\n');
    fprintf('1. Calculate Beam Deflection\n');
    fprintf('2. Calculate Stress (σ = F / A)\n');
    fprintf('3. Calculate Strain (ε = ΔL / L)\n');
    fprintf('4. Calculate Stress using Hooke''s Law (σ = E * ε)\n');
    fprintf('5. Exit to Main Menu\n');

    choice = input('\nSelect an option (1–5): ');

    switch choice
        case 1  % Beam Deflection
            F = input('Enter applied force (N): ');
            L = input('Enter length of beam (m): ');
            E = input('Enter Young''s modulus (Pa): ');
            I = input('Enter moment of inertia (m^4): ');
            try
                delta = beam_deflection(F, L, E, I);
                fprintf('Beam Deflection = %.6f m\n', delta);
            catch ME
                fprintf('Error: %s\n', ME.message);
            end
            pause;

        case 2  % Stress
            F = input('Enter force (N): ');
            A = input('Enter cross-sectional area (m^2): ');
            try
                sigma = stress(F, A);
                fprintf('Stress = %.3f Pa\n', sigma);
            catch ME
                fprintf('Error: %s\n', ME.message);
            end
            pause;

        case 3  % Strain
            delta_L = input('Enter change in length (m): ');
            L = input('Enter original length (m): ');
            try
                epsilon = strain(delta_L, L);
                fprintf('Strain = %.6f (dimensionless)\n', epsilon);
            catch ME
                fprintf('Error: %s\n', ME.message);
            end
            pause;

        case 4  % Hooke's Law
            E = input('Enter Young''s modulus (Pa): ');
            epsilon = input('Enter strain (dimensionless): ');
            sigma = hookies_law(E, epsilon);
            fprintf('Stress = %.3f Pa\n', sigma);
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
