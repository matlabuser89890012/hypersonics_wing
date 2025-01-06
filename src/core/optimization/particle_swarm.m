% Particle swarm optimization for a given objective function

function [best_position, best_value] = particle_swarm(population_size, fitness_function, iterations)
    % Initialize particle positions and velocities
    particles = rand(population_size, 2);
    velocities = zeros(population_size, 2);
    best_positions = particles;
    
    % Iterate over generations
    for iter = 1:iterations
        fitness = arrayfun(@(i) fitness_function(particles(i, :)), 1:population_size);
        [best_value, best_idx] = min(fitness);
        best_position = particles(best_idx, :);
        
        % Update velocities and positions
        velocities = update_velocity(particles, velocities, best_positions);
        particles = particles + velocities;
    end
end
