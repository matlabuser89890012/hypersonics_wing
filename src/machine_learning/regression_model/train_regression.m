% Function to train a regression model

function regression_model = train_regression(training_data, target_data)
    % Train a simple linear regression model
    regression_model = fitlm(training_data, target_data);
    
    % Display training completion
    fprintf('Regression model training completed.\n');
end
