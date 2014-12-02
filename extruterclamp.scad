$fn=50;
difference() {
	union (){
	   translate([0,0,0]) cylinder(15,21,21,center=true);
	   translate([0,0,0]) scale ([0.5,1.2,1])cylinder(15,21,21,center=true);
//#	   translate([0,0,0]) cube([6,60,15],center=true);

	   translate([22,0,0]) cube([7,20,15],center=true);
	}
	//切
   translate([0,0,0]) cube([0.5,60,15],center=true);

	//big hold
   translate([0,0,0]) cylinder(15,18,18,center=true);

	//螺絲
   #translate([25,0,4]) rotate([0,90,0]) cylinder(15,1.6,1.6,center=true);
   #translate([25,0,-4]) rotate([0,90,0]) cylinder(15,1.6,1.6,center=true);

   #translate([17,0,4]) rotate([0,90,0]) cylinder(5,3.3,3.3,center=false);
   #translate([17,0,-4]) rotate([0,90,0]) cylinder(5,3.3,3.3,center=false);
	
	//clamp lock
   #translate([0,22,0]) rotate([0,90,0]) cylinder(10,1.6,1.6,center=true);
   #translate([0,-22,0]) rotate([0,90,0]) cylinder(10,1.6,1.6,center=true);

   #translate([-4,22,0]) rotate([0,-90,0]) cylinder(10,2.7,2.7,center=false);
   #translate([-4,-22,00]) rotate([0,-90,0]) cylinder(10,2.7,2.7,center=false);


   #translate([3,22,00]) rotate([0,90,0]) cylinder(5,3.1,3.1,center=false,$fn=6);
   #translate([3,-22,00]) rotate([0,90,0]) cylinder(5,3.1,3.1,center=false,$fn=6);





}








