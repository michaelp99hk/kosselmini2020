$fn=50;





module holder(height){

difference(){
	union(){
		hull () {
			translate([0,-3,0]) scale([1,0.5,1])	cylinder (height,8,8);
			translate([-8,-6,0])cube([16,5,1]);
			translate([-8,2,height])cube([16,5,1]);
		}
		hull () {
			translate([0,-5,0]) 	scale([1,0.7,1])cylinder (2,8,8);
			translate([-8,-6,0])cube([16,5,2]);
		}
	//top
	hull(){
		translate([-8,-12,height]) cube ([16,19,3]);
		translate([0,0,height-10])	scale([1,0.5,1])	cylinder (5,8,5);
	}
	
	translate([-8,-7,height])rotate([90,0,0]) cube ([16,18,5]);



	}
	



#	translate([0,-2,height+3+10])rotate([90,0,0]) cylinder(10,1.6,1.6);
#	translate([0,-9,height+3+10])rotate([90,0,0]) cylinder(3,3,3);



	}


}



translate([0,0,0])rotate([270,90,0]) holder (75);



