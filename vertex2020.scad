include <configuration2020.scad>;

$fn = 24;
roundness = 6;

module extrusion_cutout(h, extra) {

  difference() {
//1515 #    cube([15, 15, h], center=true);
 translate([0,-2.5,0])  cube([extrusion+extra, extrusion+extra, h], center=true);
/* slot
    for (a = [0:90:359]) rotate([0, 0, a]) {
      translate([extrusion/2, 0, 0])
        cube([6, 2.5, h+1], center=true);
    }
*/
  }
}

module screw_socket() {
  cylinder(r=m3_wide_radius, h=20, center=true);
  translate([0, 0, 3.8]) cylinder(r=4, h=5);
}

module screw_socket_cone() {
  union() {
    screw_socket();
    scale([1, 1, -1]) cylinder(r1=4, r2=7, h=4);
  }
}

module vertex(height, idler_offset, idler_space) {
  union() {
    // Pads to improve print bed adhesion for slim ends.
    translate([-37.5, 52.2, -height/2]) cylinder(r=8, h=0.25);
    translate([37.5, 52.2, -height/2]) cylinder(r=8, h=0.25);

    difference() {
      union() {
        intersection() {
          translate([0, 22, 0])
          	cylinder(r=41, h=height, center=true, $fn=60);
          translate([0, -37, 0]) rotate([0, 0, 30])
            cylinder(r=50, h=height+1, center=true, $fn=6);
        }
        translate([0, 38, 0]) intersection() {
			rotate([0, 0, -90]) cylinder(r=55, h=height, center=true, $fn=3);
          translate([0, 10, 0]) cube([100, 100, 2*height], center=true);
          translate([0, -10, 0]) rotate([0, 0, 30])
            cylinder(r=55, h=height+1, center=true, $fn=6);
        }
          
      }
     difference() {
			color("blue") translate([0, 58, 0]) minkowski() {
          intersection() {
            rotate([0, 0, -90])
              cylinder(r=55, h=height, center=true, $fn=3);
            translate([0, -32, 0])
              cube([100, 16, 2*height], center=true);
          }
          cylinder(r=roundness, h=1, center=true);
        }
        // Idler support cones.
        translate([0, 26+idler_offset-30, 0]) rotate([-90, 0, 0])
          cylinder(r1=30, r2=2, h=30-idler_space/2);
        translate([0, 26+idler_offset+30, 0]) rotate([90, 0, 0])
          cylinder(r1=30, r2=2, h=30-idler_space/2);
      }
      color ("red") translate([0, 58, 0]) minkowski() {
        intersection() {
          rotate([0, 0, -90])
            cylinder(r=55, h=height, center=true, $fn=3);
          translate([0, 7, 0])
            cube([100, 30, 2*height], center=true);
        }
        cylinder(r=roundness, h=1, center=true);
      }

      extrusion_cutout(height+10, 2*extra_radius);


      for (z = [0:25:height]) {

        translate([0, -13-extra_radius, z+10-height/2]) rotate([90, 0, 0])screw_socket();

	        for (a = [-1, 1]) {

	          rotate([0, 0, 30*a]) translate([-18.5*a, 111, z+10-height/2]) {
	            for (y = [-88, -47]) {
#	              translate([a*10, y, 0]) rotate([0, a*90, 0]) screw_socket();
	            }
	            // Nut tunnels.
					/*
					for (z = [-1, 1]) {
						scale([1, 1, z]) translate([0, -100,6]) minkowski() {
							rotate([0, 0, -a*30]) cylinder(r=5, h=12, $fn=6);
							cube([0.1, 5, 0.1], center=true);
				      }
					}
					*/

          }

        }
      }
    }
  }
}


translate([0, 0, 10]) vertex(20, idler_offset=0, idler_space=10);
