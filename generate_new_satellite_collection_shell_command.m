function [new_satellite_collection_shell_command] = generate_new_satellite_collection_shell_command(scenario, sat_collection, walker_type, shell_name, num_planes, num_sats_per_plane, classical_elements)

sma = classical_elements(1);
ecc = classical_elements(2);
inc = classical_elements(3);
raan = classical_elements(4);
arg_of_peri = classical_elements(5);
mean_anomaly = classical_elements(6);

if num_planes > 1
new_satellite_collection_shell_command = "Collection */SatelliteCollection/" + sat_collection.InstanceName + ' Define Walker AddShell "' + string(shell_name) + '" Type' + " " + string(walker_type) + " NumPlanes "...
    + string(num_planes) + " NumSatsPerPlane " + string(num_sats_per_plane) + ' InterPlanePhaseIncrement 1 Epoch "' + scenario.StartTime + '" Semimajoraxis ' + string(sma) + ...
    " Eccentricity " + string(ecc) + " Inclination " + string(inc) + " RAAN " + string(raan) + " ArgumentOfPerigee " + string(arg_of_peri) + " MeanAnomaly " + (mean_anomaly);
else
new_satellite_collection_shell_command = "Collection */SatelliteCollection/" + sat_collection.InstanceName + ' Define Walker AddShell "' + string(shell_name) + '" Type' + " " + string(walker_type) + " NumPlanes "...
    + string(num_planes) + " NumSatsPerPlane " + string(num_sats_per_plane) + ' InterPlanePhaseIncrement 0 Epoch "' + scenario.StartTime + '" Semimajoraxis ' + string(sma) + ...
    " Eccentricity " + string(ecc) + " Inclination " + string(inc) + " RAAN " + string(raan) + " ArgumentOfPerigee " + string(arg_of_peri) + " MeanAnomaly " + (mean_anomaly);
end
end