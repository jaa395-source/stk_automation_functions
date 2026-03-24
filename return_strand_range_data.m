function [table_of_data, from_and_to_array] = return_strand_range_data(dataProviders, section_number, interval_number)

strand_title = dataProviders.Sections.Item(int32(section_number)).Title;
split_title = strsplit(strand_title, " ");
from_and_to_array = cell(1,2);
from_and_to_array{1} = string(split_title(find(split_title == "to") - 1));
from_and_to_array{2} = string(split_title(end));

times = cell2mat(dataProviders.Sections.Item(section_number).Intervals.Item(interval_number).DataSets.GetDataSetByName("Time").GetValues);
strand_names = string(dataProviders.Sections.Item(section_number).Intervals.Item(interval_number).DataSets.GetDataSetByName("Strand Name").GetValues);
ranges = cell2mat(dataProviders.Sections.Item(section_number).Intervals.Item(interval_number).DataSets.GetDataSetByName("Range").GetValues);

strand_names = strrep(strand_names, strand_names, string(from_and_to_array(end)));
table_of_data = table(times, strand_names, ranges);


end