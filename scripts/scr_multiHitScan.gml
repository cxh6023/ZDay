//Works
//Works
//Works
//Works
//Works
//Works
var angle = argument0;
var shotsTotal = argument1; //the amount of shots fired in a single shot
var spaceBetween = argument2; //the amount of space in between each bullet
var j = 0; //this is a placeholder for i when i needed to be negative
for(i = 0; i < shotsTotal*2; i+=2)
{
    //Creates a vairable(shotx) and sets it to the x coordinate that the line will be made to
    shotx = x+lengthdir_x(22, dir+angle);
    //Creates a variable(shoty) and sets it to the y coordinate that the line will be made to
    shoty = y+lengthdir_y(22, dir+angle);
    //Creates a variable(endx)
    endx = shotx;
    //Creates a variable(endy)
    endy = shoty;
    var collision = position_meeting(endx, endy, obj_wall_metal) || position_meeting(endx, endy, obj_explodables);
    while(!collision && distance_to_point(endx, endy) < room_width)
    {
        endx += lengthdir_x(3, dir1+(spaceBetween*i)-(spaceBetween*shotsTotal/2)-spaceBetween*1.5);  
        endy += lengthdir_y(3, dir1+(spaceBetween*i)-(spaceBetween*shotsTotal/2)-spaceBetween*1.5);
        //length was originally 1 for pixels
        collision = position_meeting(endx, endy, obj_wall_metal) || position_meeting(endx, endy, obj_explodables);// || ((abs(endx-shotx) > room_width) || abs(endy-shoty) > room);
    }
    array[i] = endx;
    array[i+1] = endy;
    if(i==shotsTotal) //if all of the shots on the left have been calculated
    {
    }
}
return array;
