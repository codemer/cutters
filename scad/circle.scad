include <defaults.scad>

module simple_circle (rad) {
    difference() {
        translate([0,0,0]) {
            cylinder(r=rad+rim, h=rim_h, $fn=100);
            cylinder(r=rad, h=base_height, $fn=100);
        }
        translate([0,0,-1]) {
            cylinder(r=rad-1, h=base_height+2, $fn=64);
        }
    }
}

//simple_circle(10);
