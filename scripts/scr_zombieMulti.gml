if(mouse_check_button_pressed(mb_left) && obj_player.magazine > 0)
{
    //draw_text(70, 70, string(shotCoordinate[0])+ ", " + string(shotCoordinate[1]));
    for(i=0; i < array_length_1d(obj_player.shotCoordinate)-1; i+=2)
    {
        if(collision_line(global.shotx, global.shoty, obj_player.shotCoordinate[i], obj_player.shotCoordinate[i+1], self, 0, 0))
        {
            instance_create(x, y, obj_blood); //Create a blood splatter at a random angle
            obj_player.points+=10; //Rewards the player 10 points
            hp-=1*obj_player.weapon[obj_player.gun+obj_player.papped, 6]; //this subtracts hgealth from the zombie depending on how much damage the curreently equipped gun does
            if(hp<= 0) //if the zombie's health is less than or equal to zero
            {
                obj_player.activeZombies--;
                obj_player.zombiesLeft--;
                instance_create(x, y, obj_dead_zombie);
                instance_destroy();
            }
        }
    }
}
/*
if(mouse_check_button_pressed(mb_left) && obj_player.magazine > 0)
{
    if(collision_line(global.shotx, global.shoty, global.endx, global.endy, self, 0, 0))
    {
         instance_create(x, y, obj_blood); //Create a blood splatter at a random angle
         obj_player.points+=10; //Rewards the player 10 points
         hp-=1*obj_player.weapon[obj_player.gun+obj_player.papped, 6]; //this subtracts hgealth from the zombie depending on how much damage the curreently equipped gun does
         if(hp<= 0) //if the zombie's health is less than or equal to zero
         {
            obj_player.activeZombies--;
            obj_player.zombiesLeft--;
            instance_create(x, y, obj_dead_zombie);
            instance_destroy();
         }
    }
}
*/
