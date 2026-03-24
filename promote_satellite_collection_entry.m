function [new_sat] = promote_satellite_collection_entry(root, sat_col,entry)
promotion_command = "Collection */SatelliteCollection/" + sat_col.InstanceName + ...
    " Promote Entry " + '"' + entry + '"' + " PromotedName " + '"' + entry + '"';
root.ExecuteCommand(promotion_command);
new_sat = root.CurrentScenario.Children.GetElements('eSatellite').Item(entry);
end