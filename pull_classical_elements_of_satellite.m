function [classical_elements] = pull_classical_elements_of_satellite(satellite, scenario)

classicalDP = satellite.DataProviders.Item("Classical Elements").Group.Item("J2000").Exec(scenario.StartTime, scenario.StopTime, 1);

sma = cell2mat(classicalDP.DataSets.GetDataSetByName("Semi-major Axis").GetValues());
ecc = cell2mat(classicalDP.DataSets.GetDataSetByName("Eccentricity").GetValues());
inc = cell2mat(classicalDP.DataSets.GetDataSetByName("Inclination").GetValues());
raan = cell2mat(classicalDP.DataSets.GetDataSetByName("RAAN").GetValues());
arg_of_peri = cell2mat(classicalDP.DataSets.GetDataSetByName("Arg of Perigee").GetValues());
mean_anomaly = cell2mat(classicalDP.DataSets.GetDataSetByName("Mean Anomaly").GetValues());
classical_elements = [sma, ecc, inc, raan, arg_of_peri, mean_anomaly];
classical_elements = classical_elements(1,:);
end