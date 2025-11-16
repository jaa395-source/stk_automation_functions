function generate_walker_constellation(sat, root, walker_type, num_planes, num_sats_per_plane, inter_plane_phasing, const_name)
execute_connect_command(root,generate_walker_constellation_command(sat, walker_type, num_planes, num_sats_per_plane, inter_plane_phasing, const_name));
end