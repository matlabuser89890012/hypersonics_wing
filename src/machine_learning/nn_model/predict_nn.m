% Function to predict outcomes using a trained neural network model

function predictions = predict_nn(nn_model, input_data)
    % Normalize the input data (if required by the model)
    normalized_input = normalize(input_data);
    
    % Predict using the trained neural network
    predictions = nn_model(normalized_input);
    
    % Display predictions
    fprintf('Predicted values: %s\n', mat2str(predictions));
end
