function add_connection_to_chain(root, scenario, chain, from_object, to_object, varargin)
full_path_replacement_string = "/Application/STK/Scenario/" + scenario.InstanceName + "/";

add_connection_command = "Chains */" + strrep(chain.Path, full_path_replacement_string, "") + " Connections Add From "...
    + strrep(from_object.Path, full_path_replacement_string, "");

i = 1;
if from_object.ClassName == "SatelliteCollection"
    shell_name = string(varargin(i));
    i = i + 1;
    if (contains(shell_name, "All"))
        add_connection_command = add_connection_command + "/Subset/" + shell_name;
    else
        add_connection_command = add_connection_command + "/Subset/Shell_" + shell_name;
    end
end

add_connection_command = add_connection_command + " To " + strrep(to_object.Path, full_path_replacement_string, "");

if to_object.ClassName == "SatelliteCollection"
    shell_name = string(varargin(i));
    i + 1;
    if (contains(shell_name, "All"))
        add_connection_command = add_connection_command + "/Subset/" + shell_name;
    else
        add_connection_command = add_connection_command + "/Subset/Shell_" + shell_name;
    end
end

root.ExecuteCommand(add_connection_command);
end