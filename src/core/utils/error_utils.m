% Utility functions for error handling

function check_input_validity(input_data)
    if isempty(input_data)
        error('Input data cannot be empty');
    end
end
