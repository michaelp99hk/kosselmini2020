// Based on "Makergear Filament drive goes Bowden" by Luke321
// http://www.thingiverse.com/thing:63674


/*fonts*/
include <Orbitron_Medium.scad>;


include <configuration.scad>;

filament_offset = 22.5;

module extruder() {
  rotate([90, 0, 0]) difference() {
    union() {
      //main cylinder
      translate([16.5,20,20.5]) rotate([90,0,0]) cylinder(h=20, r=19);

      //bearing mount

      translate([31,20,21]) rotate([90,0,0]) cylinder (h=20, r=8);

      //pushfit/pneufit mount
      translate([filament_offset, 6.5, 13])
        cylinder(r=7.5, h=26, center=true, $fn=6);

      //filament support
      translate([21.75,6.5,34]) rotate([0,0,0]) cylinder (h=8, r=3, $fn=12);

      //clamp
      translate([20, 0, 28]) cube([15, 20, 14]);
    }

    //pulley opening
    translate([16,21,21]) rotate([90,0,0]){
      cylinder (h=22, r=7);

      rotate([0,0,45]) {
        //translate([14,0,0]) cylinder(h=22, r=1.6, $fn=12);
        translate([0,15,0]) cylinder(h=22, r=1.6, $fn=12);
        translate([-15,0,0]) cylinder(h=22, r=1.6, $fn=12);
        translate([0,-15,0]) cylinder(h=22, r=1.6, $fn=12);
      }
    }

    //gearhead indentation
    translate([16,21,21]) rotate([90,0,0]) cylinder (h=3.35, r=12.2);

    //pulley hub indentation
    translate([16,20-2,21]) rotate([90,0,0]) cylinder (h=5.6, r=7);

    //bearing screws
    translate([31.5,21,21]) rotate([90,0,0]) cylinder (h=22, r=2.6, $fn=12);
    translate([31.5,22,21]) rotate([90,30,0]) cylinder (h=8.01, r=4.7, $fn=6);




    //bearing
   difference() {
      union() {
#       translate([30.5,10,21]) rotate([90,0,0]) cylinder (h=6, r=9.5);

       translate([31,9-5,21-8.25-2]) cube([20, 6, 18.5]);
        //opening between bearing and pulley
        translate([20,11-5.25,21-8.25+3.25+1]) cube([10, 5.25, 8]);
      }
      //removable supports
      for (z = [15:3:27]) {
        translate([36, 10, z])  cube([20, 20, 0.5], center=true);
      }
    }

    //filament path chamfer
    translate([filament_offset,6.5,15]) rotate([0,0,0]) 
      cylinder(h=3, r1=0.5, r2=3, $fn=12);

    //filament path
    translate([filament_offset,6.5,-10]) rotate([0,0,0]) 
      cylinder(h=60, r=1.1, $fn=12);



    //pushfit/pneufit mount
//translate ([16,14,1.5]) rotate ([0,180,0]) scale (0.1)	Orbitron_Medium("8", steps=2, center=true, extra=10, height=10);
//color("blue")    translate([filament_offset, 6.5, -2])  cylinder(r=4, h=10, $fn=12);
translate ([16,14,1.5]) rotate ([0,180,0]) scale (0.1)Orbitron_Medium("10", steps=2, center=true, extra=10, height=10);
color("blue")    translate([filament_offset, 6.5, -2])  cylinder(r=4.9, h=10, $fn=12);

    //clamp slit
    translate([25,-1,10]) cube([2, 22, 35]);
    //clamp nut
    translate([10.5,12,38]) rotate([0,90,0])
      cylinder(h=11, r=m3_nut_radius, $fn=6);
    //clamp screw hole
#    translate([15,12,38]) rotate([0,90,0])
      cylinder(h=25, r=m3_wide_radius, $fn=12);
  }
}

extruder();
