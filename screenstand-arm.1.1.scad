$fn=20;


rotate([0,-90,0]){
difference(){
	union(){
		cube([6,3,45]);


#		translate([0,-9,40]) cube([6,9,5]);


		translate([0,.1,4])rotate ([180,0,0])cube([6,53,4]);
		translate ([0,-55,6])rotate([-50,0,0])cube([6,6,60]);

			
		}
	
		translate ([0,-55,6])rotate([-50,0,0]){
			//broad mount
			translate ([3,15,3])rotate([90,0,0]) cylinder(20,1.5,1.5);
			translate ([3,10,53.3])rotate([90,0,0]) cylinder(20,1.5,1.5);
			//sd card
			translate ([0,3.8,7])rotate([90,0,0]) cube([6,30,4]);
		}


		translate ([4,-5,10])rotate([90,0,0]) cylinder(8,1.5,1.5);
		//translate ([4,-5,35])rotate([90,0,0]) cylinder(40,1.5,1.5);

		translate ([0,3,0]) cube([8,3,54]);
}



}




translate ([0,3,5])rotate([-0,90,90]){
		translate ([2.4,35,-0.5]) rotate([0,0,30]) cylinder(3,3,3,$fn=6);

		translate ([2.5,35,0.7]) hull(){

			translate ([-2.7,-4.9,1.4]) cube ([5.2,9.8,1]);
			translate ([-2.7,-3,1.8]) cube ([5.2,6,3]);

		}

}









