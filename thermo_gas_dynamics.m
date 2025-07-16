function thermo_gas_dynamics()
    while true
        fprintf('\n\033[1;36m--- THERMODYNAMICS & GAS DYNAMICS MENU ---\033[0m\n');
        fprintf('1. Ideal Gas Law (P = ρRT)\n');
        fprintf('2. Isentropic Flow (Pressure & Temperature relations)\n');
        fprintf('3. Stagnation Temperature (T0 = T(1 + ((γ - 1)/2)*M²))\n');
        fprintf('4. Back to Main Menu\n');

        choice = input('\n\033[1;33mChoose a formula (1–4): \033[0m');

        if isempty(choice) || ~isnumeric(choice) || choice < 1 || choice > 4
            fprintf('\033[1;31mInvalid selection. Try again.\033[0m\n');
            continue;
        end

        if choice == 4
            break;
        end

        switch choice
            case 1  % Ideal Gas Law
                rho = input('Density ρ (kg/m³): ');
                R = input('Specific gas constant R (J/(kg·K)): ');
                T = input('Temperature T (K): ');
                if rho <= 0 || R <= 0 || T <= 0
                    fprintf('\033[1;31mAll inputs must be positive.\033[0m\n');
                else
                    P = rho * R * T;
                    fprintf('\033[1;32mPressure P = %.2f Pa\033[0m\n', P);
                end

            case 2  % Isentropic Flow (pressure & temperature ratio)
                % Simplified example: Given Mach number and gamma
                M = input('Mach number M: ');
                gamma = input('Ratio of specific heats γ: ');
                if M < 0 || gamma <= 1
                    fprintf('\033[1;31mMach must be ≥ 0 and γ > 1.\033[0m\n');
                else
                    % Pressure ratio: P0/P = (1 + ((γ - 1)/2)*M^2)^(γ/(γ-1))
                    P0_P = (1 + ((gamma - 1)/2) * M^2)^(gamma/(gamma-1));
                    % Temperature ratio: T0/T = 1 + ((γ - 1)/2)*M²
                    T0_T = 1 + ((gamma - 1)/2) * M^2;
                    fprintf('\033[1;32mStagnation Pressure Ratio P0/P = %.3f\n', P0_P);
                    fprintf('Stagnation Temperature Ratio T0/T = %.3f\033[0m\n', T0_T);
                end

            case 3  % Stagnation Temperature
                T = input('Static Temperature T (K): ');
                gamma = input('Ratio of specific heats γ: ');
                M = input('Mach number M: ');
                if T <= 0 || gamma <= 1 || M < 0
                    fprintf('\033[1;31mTemperature > 0, γ > 1, Mach ≥ 0 required.\033[0m\n');
                else
                    T0 = T * (1 + ((gamma - 1)/2) * M^2);
                    fprintf('\033[1;32mStagnation Temperature T0 = %.2f K\033[0m\n', T0);
                end
        end
    end
end
