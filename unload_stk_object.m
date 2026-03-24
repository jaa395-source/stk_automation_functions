function unload_stk_object(root, full_path_replacement_string, object)
unload_command = "Unload / */" + strrep(object.Path, full_path_replacement_string, "");
root.ExecuteCommand(unload_command);
end