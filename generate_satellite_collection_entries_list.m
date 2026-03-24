function [entries] = generate_satellite_collection_entries_list(satellite_collection)
    entityDP = satellite_collection.DataProviders.Item("Subset Listing").Group.Item("AllSatellites").Exec;
    entries = string(entityDP.Datasets.GetDataSetByName("Name").GetValues());
end