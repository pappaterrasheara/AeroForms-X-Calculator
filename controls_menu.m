function controls_menu()
% CONTROLS_MENU - Interactive menu for control system calculations

while true
    clc;
    fprintf('=== Controls Calculator ===\n');
    fprintf('1. Calculate Moment (ΣM = I * α)\n');
    fprintf('2. Compute PID Controller Output\n');
    fprintf('3. Input Stability Derivatives (Cm_alpha, Cn_beta)\n');
    fprintf('4. Exit to Main Menu\n');

    choice = input('\nSelect an option (1–4): ');

    switch choice
        case 1  % Moment Equation
            I = input('Enter moment of inertia (kg·m²): ');
            alpha = input('Enter angular acceleration (rad/s²): ');
            M = moment_equation(I, alpha);
            fprintf('Net Moment = %.3f N·m\n', M);
            pause;

        case 2  % PID Controller
            Kp = input('Enter Kp (Proportional gain): ');
            Ki = input('Enter Ki (Integral gain): ');
            Kd = input('Enter Kd (Derivative gain): ');
            e = input('Enter current error: ');
            e_prev = input('Enter previous error: ');
            integral_e = input('Enter accumulated error (integral): ');
            dt = input('Enter time step (s): ');
            u = pid_controller(Kp, Ki, Kd, e, e_prev, integral_e, dt);
            fprintf('PID Control Output = %.3f\n', u);
            pause;

        case 3  % Stability Derivatives
            Cm_alpha_input = input('Enter Cm_alpha (pitching moment derivative): ');
            Cn_beta_input = input('Enter Cn_beta (yawing moment derivative): ');
            [Cm_alpha, Cn_beta] = stability_derivatives(Cm_alpha_input, Cn_beta_input);
            fprintf('Cm_alpha = %.4f (1/rad)\n', Cm_alpha);
            fprintf('Cn_beta  = %.4f (1/rad)\n', Cn_beta);
            pause;

        case 4
            disp('Returning to main menu...');
            pause(1);
            break;

        otherwise
            disp('Invalid choice. Try again.');
            pause(1);
    end
end
end
