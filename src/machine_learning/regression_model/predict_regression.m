% Function to predict outcomes using a trained regression model

function predictions = predict_regression(regression_model, input_data)
    % Normalize the input data (if required)
    normalized_input = normalize(input_data);
    
    % Predict using the trained regression model
    predictions = predict(regression_model, normalized_input);
    
    % Display predictions
    fprintf('Predicted regression values: %s\n', mat2str(predictions));
end
