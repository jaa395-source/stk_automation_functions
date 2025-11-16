function set_satellite_state(root, scenario, satellite, classical_elements)
sma = classical_elements(1);
ecc = classical_elements(2);
inc = classical_elements(3);
arg_of_per = classical_elements(4);
raan = classical_elements(5);
ta = classical_elements(6);

set_state_string = strcat("SetState */Satellite/", satellite.InstanceName, ' Classical TwoBody "', string(scenario.StartTime), '" "', string(scenario.StopTime), '" 60 J2000 "', string(scenario.StartTime), '" ',...
    string(sma), " ", string(ecc), " ", string(inc), " ", string(arg_of_per), " ", string(raan), " ", string(ta));

root.ExecuteCommand(set_state_string);
end