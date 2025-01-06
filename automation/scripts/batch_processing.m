% batch_processing.m
% Script to process multiple simulations in batch mode

% Load list of simulations
simulations = readtable('simulations_list.csv'); % Assuming you have a list of simulations to run

for i = 1:height(simulations)
    % Set parameters for each simulation
    mach_number = simulations.mach_number(i);
    pressure = simulations.pressure(i);
    temperature = simulations.temperature(i);

    % Call the simulation script with the current parameters
    disp(['Running simulation #', num2str(i), ' with Mach number: ', num2str(mach_number)]);
    run('automation/scripts/automation_script.m');

    % Store or log results
    disp(['Simulation #', num2str(i), ' complete.']);
end
