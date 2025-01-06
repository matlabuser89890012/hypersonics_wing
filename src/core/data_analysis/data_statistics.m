% Function to compute statistics on simulation data

function stats = data_statistics(data)
    stats.mean = mean(data);
    stats.median = median(data);
    stats.std_dev = std(data);
    stats.max = max(data);
    stats.min = min(data);
end
