% Function to train a neural network model for prediction

function nn_model = train_nn(training_data, target_data)
    % Define the neural network architecture (simple feedforward)
    nn_model = fitnet(10); % 10 neurons in a single hidden layer
    
    % Train the neural network with the given data
    nn_model = train(nn_model, training_data', target_data');
    
    % Display training completion
    fprintf('Neural network training completed.\n');
end
