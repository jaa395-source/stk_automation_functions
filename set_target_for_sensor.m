function set_target_for_sensor(sensor,target)
if string(sensor.PointingType) ~= "eSnPtTargeted"
    sensor.SetPointingType('eSnPtTargeted');
end
try
    sensor.Pointing.Targets.AddObject(target)
catch
    disp("Sensor is likely already pointing at " + target.InstanceName);
    disp("The following are targets for " + sensor.InstanceName + ":");
    for i = 1:sensor.Pointing.Targets.Count
        disp(sensor.Pointing.Targets.Item(int32(i - 1)).Name);
    end
end
end