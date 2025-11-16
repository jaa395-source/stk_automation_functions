function [new_object] = add_new_stk_object(scenario, object_type, object_name)
obj_enumeration = char("e" + object_type);

if ~scenario.Children.GetElements(obj_enumeration).Contains(object_name)
    new_object = scenario.Children.New(obj_enumeration, object_name);
else
    new_object = scenario.Children.GetElements(obj_enumeration).Item(object_name);
end
end