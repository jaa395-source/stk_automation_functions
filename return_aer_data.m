function [table_of_data] = return_aer_data(dataProviders, interval_number)
times = cell2mat(dataProviders.Intervals.Item(interval_number).DataSets.GetDataSetByName("Time").GetValues);
strand_names = string(dataProviders.Intervals.Item(interval_number).DataSets.GetDataSetByName("Strand Name").GetValues);
azimuths = cell2mat(dataProviders.Intervals.Item(interval_number).DataSets.GetDataSetByName("Azimuth").GetValues);
elevations = cell2mat(dataProviders.Intervals.Item(interval_number).DataSets.GetDataSetByName("Elevation").GetValues);
ranges = cell2mat(dataProviders.Intervals.Item(interval_number).DataSets.GetDataSetByName("Range").GetValues);

table_of_data = table(times, strand_names, azimuths, elevations, ranges);
end