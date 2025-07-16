function M = mach_number(V, a)
% MACH_NUMBER Calculates the Mach number: M = V / a

    if a == 0
        error('Speed of sound cannot be zero.');
    end
    M = V / a;
end
