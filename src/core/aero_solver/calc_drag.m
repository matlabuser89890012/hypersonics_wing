% Function to calculate drag based on geometry and Mach number

function drag = calc_drag(x, y, Mach)
    % Simple drag calculation (for demonstration)
    drag_coefficient = 0.02 * Mach;
    area = trapz(x, y);  % Approximate surface area using trapezoidal rule
    drag = drag_coefficient * area;
end
