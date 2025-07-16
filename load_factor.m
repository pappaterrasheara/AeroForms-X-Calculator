function n = load_factor(L, W)
% LOAD_FACTOR calculates load factor: n = L / W
%
% Inputs:
%   L - lift force (N)
%   W - weight (N)
%
% Output:
%   n - load factor (dimensionless)

    if W == 0
        error('Weight cannot be zero.');
    end

    n = L / W;
end
