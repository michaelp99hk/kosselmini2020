
   //#translate([-15,-15,0])cube([45,65,3]);
$fn=100;
difference() {
   translate([0,0,0]) cylinder(8,15,15);

   translate([-7.5,0,0]) cylinder(8,2.2,2.2);

   #translate([-7.5,0,3]) cylinder(5,4,4);

   translate([170,0,0]) cylinder(4,160,160);

   translate([170,0,4]) cylinder(3,170,170);

   translate([170,0,7]) cylinder(1,170,169);

}








