include <circle.scad>

module semicircle (rad) {
    difference() {
        translate([0,0,0]) {
            simple_circle(rad);
            translate([-rad,-1,0]) {
                cube([rad*2,1,8],center=false);
            }
        }
        translate([-rad-2,0,-1]) {
            cube([rad*2+4, rad+2,10],center=false);
        }
    }
   translate([-rad-1,0,0]) cube([rad*2+2,1,1.5], center=false);
}

//semicircle(11);
