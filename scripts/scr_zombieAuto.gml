if(mouse_check_button(mb_left) && obj_player.magazine > 0 && obj_player.capCounter == 0)
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
