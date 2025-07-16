function main()
% MAIN - Aeroforms X - Calculate Main Menu Launcher
% Launch submenus for each aerospace module

clc;
addpath(genpath(pwd));  % Include all folders and subfolders in path

while true
    clc;
    fprintf('======================================\n');
    fprintf('       AEROFORMS X - CALCULATOR\n');
    fprintf('======================================\n');
    fprintf('Choose a module:\n\n');
    fprintf(' 1. Aerodynamics\n');
    fprintf(' 2. Controls\n');
    fprintf(' 3. Flight Mechanics\n');
    fprintf(' 4. Orbital Mechanics\n');
    fprintf(' 5. Propulsion\n');
    fprintf(' 6. Structures\n');
    fprintf(' 7. Thermodynamics\n');
    fprintf(' 8. Thermo Gas Dynamics\n');
    fprintf(' 9. Utilities\n');
    fprintf('10. Exit\n');

    choice = input('\nEnter your choice (1-10): ');

    switch choice
        case 1
            aerodynamics_menu();
        case 2
            controls_menu();
        case 3
            flight_mechanics_menu();
        case 4
            orbital_mechanics_menu();
        case 5
            propulsion_menu();
        case 6
            structures_menu();
        case 7
            thermodynamics_menu();
        case 8
            thermo_gas_dynamics_menu();
        case 9
            utilities_menu();
        case 10
            disp('Exiting Aeroforms X. Have a great day!');
            break;
        otherwise
            disp('Invalid input. Please enter a number from 1 to 10.');
            pause(1.5);
    end
end
end
