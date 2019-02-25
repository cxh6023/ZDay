global.grid = mp_grid_create(0, 0, hcells, vcells, cell_width, cell_height);

//Add the walls
mp_grid_add_instances(global.grid, obj_wall_metal, false);
mp_grid_add_instances(global.grid, obj_door, false);
