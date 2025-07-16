function result = unit_converter(value, from_unit, to_unit)
% UNIT_CONVERTER converts between common engineering units
%
% Supported:
%   - m/s <-> km/h
%   - kg <-> lb
%   - N <-> lbf
%   - Pa <-> atm
%
% Usage:
%   result = unit_converter(100, 'm/s', 'km/h')
%   result = unit_converter(200, 'lb', 'kg')

    conversions = containers.Map();

    % Speed
    conversions('m/s_to_km/h') = 3.6;
    conversions('km/h_to_m/s') = 1 / 3.6;

    % Mass
    conversions('kg_to_lb') = 2.20462;
    conversions('lb_to_kg') = 1 / 2.20462;

    % Force
    conversions('N_to_lbf') = 0.224809;
    conversions('lbf_to_N') = 1 / 0.224809;

    % Pressure
    conversions('Pa_to_atm') = 9.86923e-6;
    conversions('atm_to_Pa') = 1 / 9.86923e-6;

    key = strcat(from_unit, '_to_', to_unit);
    
    if ~isKey(conversions, key)
        error('Conversion from %s to %s not supported.', from_unit, to_unit);
    end

    result = value * conversions(key);
end
