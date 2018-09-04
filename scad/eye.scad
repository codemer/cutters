include <circle.scad>

module half_eye (rad) {
//    translate([-rad/2, 0, 0]) simple_circle(rad);
    difference() {
        translate([rad/2, 0, 0]) simple_circle(rad);
        translate([0,-rad-4,-1]) cube([rad*2, rad*2+8, 10]);
    }
}

module eye (rad) {
    half_eye(rad);
    mirror([1,0,0]) half_eye(rad);
}

//eye(8);
//eye(16);