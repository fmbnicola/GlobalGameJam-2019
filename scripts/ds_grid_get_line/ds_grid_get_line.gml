{
var grid = argument0;
var line = argument1;

var wd = ds_grid_width(grid);

var data = [];

for(var i = 0; i < wd; i++){
	data[i] = grid[# i, line];
}

return data;
}