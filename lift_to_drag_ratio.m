function ratio = lift_to_drag_ratio(L, D)
% LIFT_TO_DRAG_RATIO Computes the lift-to-drag ratio: L / D

    if D == 0
        error('Drag cannot be zero.');
    end
    ratio = L / D;
end
