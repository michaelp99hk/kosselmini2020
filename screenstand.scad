//#translate([0,0,0]) import ("screen_stand_3dp.STL");

//#cube([166,50,45],center=false);
$fn=20;

module tower(){

	difference(){
		cylinder(9,3.5,3,center=false);
		cylinder(9,1.7,1.7,center=false);
	}

}


module m3hole(){
#	cylinder(20,1.7,1.7,center=false);
}

module pcb(){
	difference(){
	union(){
		color ("red") cube ([150,55,1.5]);
		translate ([39,3,2]){
			color ("green") 		cube ([97,60,1.5]);
			#color ("black") translate([0,10,1.5]) cube ([98,40,14]);
		}
		translate([13,31,15])cylinder(30,6.5,6.5,center=true);
		translate([13,47,15])cylinder(30,3,3,center=true);
	}
	translate([2.5,2.5,0])cylinder(30,1.5,1.5,center=true);	
	translate([2.5,52.5,0])cylinder(30,1.5,1.5,center=true);	
	translate([147.5,2.5,0])cylinder(30,1.5,1.5,center=true);	
	translate([147.5,52.5,0])cylinder(30,1.5,1.5,center=true);	
	}
}



module screenpanel(){
	difference(){
	union(){
		difference(){
			translate ([6.5,5,0]) minkowski() {
				cylinder(3,7.5,7.5);
				cube ([138.5,45.5,0.1]);
			}
			translate([9,7.8,-1])minkowski() {
				cylinder(3,8,8);
				cube ([133,40,0.1]);
			}
		}	
		translate([4,2.5,2])	rotate ([180,0,0])tower();
		translate([4,52.5,2])	rotate ([180,0,0])tower();
		translate([147.5,2.5,2])	rotate ([180,0,0])tower();
		translate([147.5,52.5,2])	rotate ([180,0,0])tower();
	}
		translate([4,2.5,0])	m3hole();
		translate([4,52.5,0])	m3hole();
		translate([147.5,2.5,0])	m3hole();
		translate([147.5,52.5,0])	m3hole();
		color ("black") translate([38,12.5,0]) cube ([100,42,14]);
		translate([14.5,30,15])cylinder(30,8,8,center=true);
		translate([14.5,47,15])cylinder(30,4,4,center=true);

		#translate([104,6,1])rotate(180,0,0)logo();
	}
}
module wallmount (){

difference(){
	translate([0,0,-15])cube([8,4,45]);

	translate([4,0,-5])rotate([90,0,0])cylinder(30,2.2,2.2,center=true);	
	translate([4,0,20])rotate([90,0,0])cylinder(30,2.2,2.2,center=true);	
}


}

module arm(){
difference (){

	hull(){
		translate([0,63,0])rotate([25,0,0])cube([8,1,12]);
		translate([4,2.5,0])cylinder(3,4,4);
	}
	translate([4,2.5,0]) m3hole();
	translate([4,52.5,0]) m3hole();
	}

	translate([0,63,0])rotate([25,0,0])wallmount ();
}

/*
pcb();
translate([6.5,0,0])rotate([0,180,0])arm();
translate([0,0,10])screenpanel();
*/
//translate([50,40,8])rotate([90,90,0])arm();
//translate([90,23,8])rotate([-90,90,0])arm();

//translate([75,-28,0])cylinder(1,85,85);


module logo(){
	difference(){
	    translate([1, -4, 4]) scale([0.2, 0.2, 1]) import("logotype.stl");
	   // translate([-17.2, 0, 0]) cube([1, 20, 20], center=true);
	}
}


translate([0,0,3])rotate([180,0,0])screenpanel();
