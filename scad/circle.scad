module simple_circle (rad) {
    difference() {
        translate([0,0,0]) {
            cylinder(r=rad+1, h=1.5, $fn=100);
            cylinder(r=rad, h=8, $fn=100);
        }
        translate([0,0,-1]) {
            cylinder(r=rad-1, h=12, $fn=64);
        }
    }
}

//simple_circle(8);
