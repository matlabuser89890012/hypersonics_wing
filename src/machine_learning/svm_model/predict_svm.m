% Function to predict outcomes using a trained Support Vector Machine model

function predictions = predict_svm(svm_model, input_data)
    % Normalize the input data (if required by the model)
    normalized_input = normalize(input_data);
    
    % Predict using the trained SVM model
    predictions = predict(svm_model, normalized_input);
    
    % Display predictions
    fprintf('Predicted SVM values: %s\n', mat2str(predictions));
end
