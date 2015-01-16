$fn=50;





module holder(height){

difference(){
	union(){
		hull () {
			translate([2.5,-3,0]) scale([1,0.5,1])	cylinder (height,7.5,7.5);
			translate([-5,0,0])cube([15,5,height]);
		}
		hull () {
			translate([2.5,-10,0]) 	scale([1.5,0.7,1])cylinder (2,5,5);
			translate([-5,0,0])cube([15,5,2]);
		}
	//top
	#hull(){
		translate([-5,-12,height]) cube ([15,17,3]);
		translate([0,0,height-8])	scale([1,0.5,1])	cylinder (5,5,5);
	}
	
	translate([-5,-7,height])rotate([90,0,0]) cube ([15,18,5]);



	}
	



#	translate([2.5,-2,height+3+10])rotate([90,0,0]) cylinder(10,1.6,1.6);
#	translate([2.5,-9,height+3+10])rotate([90,0,0]) cylinder(3,3,3);



	}


}



translate([0,0,0])rotate([270,90,0]) holder (105);



