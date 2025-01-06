% Function to integrate multiple subsystems (aero, thermo, control) in a simulation

function integrated_results = multi_system_integration(aero_results, thermo_results, control_results)
    % Combine aerodynamic, thermodynamic, and control system outputs
    integrated_results.lift = aero_results.lift;
    integrated_results.drag = aero_results.drag;
    integrated_results.heat_flux = thermo_results.heat_flux;
    integrated_results.control_signal = control_results.control_signal;
    
    % Perform system-level analysis
    integrated_results.system_performance = integrated_results.lift - integrated_results.drag + integrated_results.control_signal;
    
    % Display the integrated performance
    fprintf('System Performance: %.2f\n', integrated_results.system_performance);
end
