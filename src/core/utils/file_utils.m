% Utility functions for file handling

function save_data_to_file(data, filename)
    save(filename, 'data');
end

function data = load_data_from_file(filename)
    data = load(filename);
end
