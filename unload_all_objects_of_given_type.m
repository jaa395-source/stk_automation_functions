function unload_all_objects_of_given_type(root,type)
unload_command = "UnloadMulti / */" + type + "/*";
root.ExecuteCommand(unload_command);
end