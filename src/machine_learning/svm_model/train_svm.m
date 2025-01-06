% Function to train a Support Vector Machine (SVM) model

function svm_model = train_svm(training_data, target_data)
    % Train an SVM model using the training data
    svm_model = fitcsvm(training_data, target_data);
    
    % Display training completion
    fprintf('SVM model training completed.\n');
end
