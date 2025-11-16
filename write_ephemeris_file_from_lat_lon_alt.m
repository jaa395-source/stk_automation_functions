function [full_ephemfile] = write_ephemeris_file_from_lat_lon_alt(loc_data, altitude, filepath, filename)
    full_ephemfile = strcat(filepath, filesep, filename, ".e");
    fileID = fopen(full_ephemfile, 'w+');
    fprintf(fileID, 'stk.v.12.0\n');
    fprintf(fileID, 'BEGIN Ephemeris\n');
    fprintf(fileID, strcat('NumberOfEphemerisPoints\t\t', string(size(loc_data,1)), '\n'));
    fprintf(fileID, 'DistanceUnit   Kilometers\n');
    fprintf(fileID, 'CentralBody   Earth\n');
    fprintf(fileID, 'CoordinateSystem   Fixed\n');
    fprintf(fileID, 'EphemerisLLATimePos\n');

    for i = 1:size(loc_data, 1)
        fprintf(fileID, strcat('\n',string(loc_data(i,1)), '\t',string(loc_data(i,2)), '\t',string(loc_data(i,3)), '\t', string(altitude)));
    end 
    fprintf(fileID, '\nEND Ephemeris\n');
    fclose(fileID);
end