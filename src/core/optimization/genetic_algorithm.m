% Genetic algorithm for optimization

function [best_solution, best_fitness] = genetic_algorithm(population, fitness_function, generations)
    % Initialize population and fitness
    for gen = 1:generations
        fitness = arrayfun(@(ind) fitness_function(ind), population);
        [best_fitness, best_idx] = max(fitness);
        best_solution = population(best_idx);
        
        % Apply genetic operations (selection, crossover, mutation)
        population = selection(population, fitness);
        population = crossover(population);
        population = mutation(population);
    end
end
