 a = 0;
 d = 101.25;
 b = false;
 c = 4;
 
 while a < (min(global.player_rings[id], 32))
   {
   var ringLossID
   ringLossID = instance_create(x,y,obj_ringloss);
        ringLossID.vspeed = -dsin(d)*c;
        ringLossID.hspeed = dcos(d)*c;
        ringLossID.can_grab = false;
   if b
     {
        ringLossID.hspeed *= -1;
        d += 22.5;
     }
   b = !b;
   a += 1;
   if a == 16
     {
        c = c/2;
        d = 101.25;
     }
   }
   
//Finish the code of ringloss, reseting the ring value
global.player_rings[id] = 0;
