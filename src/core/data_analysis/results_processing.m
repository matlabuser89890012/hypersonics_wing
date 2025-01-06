% Function to process simulation results and save them to a file

function results_processing(results)
    % Process results (e.g., scaling or normalization)
    normalized_results = results / max(results);
    
    % Save results to a file
    save('simulation_results.mat', 'normalized_results');
end
