function generate_new_satellite_collection_shell(root, scenario, sat_collection, walker_type, shell_name, num_planes, num_sats_per_plane, classical_elements)
if ~sat_collection.Children.GetElements('eSubset').Contains("Shell_" + shell_name)
    execute_connect_command(root, generate_new_satellite_collection_shell_command(scenario, sat_collection, walker_type, shell_name, num_planes, num_sats_per_plane, classical_elements));
end
end