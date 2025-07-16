function Re = reynolds_number(rho, V, L, mu)
% REYNOLDS_NUMBER Calculates Re = (rho * V * L) / mu

    if mu == 0
        error('Viscosity cannot be zero.');
    end
    Re = (rho * V * L) / mu;
end
