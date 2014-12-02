$fn=20;
difference (){
	scale ([1,0.7,1])cylinder (5,10,10,$fn=6);
	translate ([-10,0,0]) cube([20,20,5]);
//	translate ([0,-4.3,0]) 	cylinder(5,2,2);
}

difference(){
	union(){
		translate ([-3,0,0]) cube([6,3,5]);
		translate ([2.1,2.3,0]) 	cylinder(5,1.2,1.2);
		translate ([-2.1,2.3,0]) 	cylinder(5,1.2,1.2);
	}
		translate ([0,2.0,0]) 	cylinder(5,2,2);
}