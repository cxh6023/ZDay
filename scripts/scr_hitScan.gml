///hitScan(angleOfShot)
var angle = argument0;
//Creates a vairable(shotx) and sets it to the x coordinate that the line will be made to
global.shotx = x+lengthdir_x(22, dir+angle);
//Creates a variable(shoty) and sets it to the y coordinate that the line will be made to
global.shoty = y+lengthdir_y(22, dir+angle);
//Creates a variable(endx)
global.endx = global.shotx;
//Creates a variable(endy)
global.endy = global.shoty;
var collision = position_meeting(global.endx, global.endy, obj_wall_metal) || position_meeting(global.endx, global.endy, obj_explodables);
while(!collision && distance_to_point(global.endx, global.endy) < room_width)
{
    global.endx += lengthdir_x(1, dir1)   
    global.endy += lengthdir_y(1, dir1)
    collision = position_meeting(global.endx, global.endy, obj_wall_metal) || position_meeting(global.endx, global.endy, obj_explodables);
}
