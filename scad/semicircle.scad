include <circle.scad>

module semicircle (rad) {
    difference() {
        translate([0,0,0]) {
            simple_circle(rad);
            translate([-rad,-1,0]) {
                cube([rad*2,1,base_height],center=false);
            }
        }
        translate([-rad-rim,0,-1]) {
            cube([rad*2+rim*2, rad+rim+1,base_height+2],center=false);
        }
    }
    translate([-rad-rim,0,0]) cube([rad*2+rim*2,1,rim_h], center=false);
}

//semicircle(11);
