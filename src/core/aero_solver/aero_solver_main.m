% Main function to execute the aerodynamic solver

function [drag, lift] = aero_solver_main(geometry, flow_conditions)
    % Extract relevant inputs
    [x, y] = load_geometry(geometry);
    Mach = flow_conditions.Mach;

    % Calculate lift and drag using sub-functions
    lift = calc_lift(x, y, Mach);
    drag = calc_drag(x, y, Mach);
    
    % Display results
    fprintf('Lift: %.2f, Drag: %.2f\n', lift, drag);
end
