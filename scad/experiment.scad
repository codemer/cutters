
// Base size
s = 15;
// Base height of cutters
h = 12;
// How far out the rim should extend. Adds stability to shape.
rim = 3;
// Offset of models from center
o = s*2+1;

module exp1(s,o) {
    translate([o,o,0]) circle(s*2/3);
    translate([-o,o,0]) circle(s*2/3);
    translate([o,-o,0]) circle(s*2/3);
    translate([-o,-o,0]) circle(s*2/3);
    circle(s);
}

module exp1_cutter(s) {
    difference() {
        translate() {
            linear_extrude(h) exp1(s,s);
            linear_extrude(1.5) exp1(s+rim,s);
        }
        translate([0,0,-0.5]) linear_extrude(h+1) exp1(s-1,s);
    }
}

module exp2(s,o) {
    for (x = [-1:1]) {
        for (y = [-1:1]) {
            translate([o*x,o*y,0]) circle(s*2/3);
        }
    }
    circle(s*1.2);
}

module exp2_cutter(s) {
    difference() {
        translate() {
            linear_extrude(h) exp2(s,s);
            linear_extrude(1.5) exp2(s+rim,s);
        }
        translate([0,0,-0.5]) linear_extrude(h+1) {
            exp2(s-1,s);
        }
    }
}

module exp3(s,o) {
    translate([o,o,0]) circle(s*2/3);
    translate([-o,-o,0]) circle(s*2/3);
    circle(s);
}

module exp3_cutter(s) {
    difference() {
        translate() {
            linear_extrude(h) exp3(s,s);
            linear_extrude(1.5) exp3(s+rim,s);
        }
        translate([0,0,-0.5]) linear_extrude(h+1) exp3(s-1,s);
    }
}

module snowman(s,o) {
    translate([0,o*1.2,0]) circle(s*3/4);
    circle(s);
    translate([0,-o*1.2,0]) circle(s*4/3);
}

module snowman_cutter(s) {
    difference() {
        translate() {
            linear_extrude(h) snowman(s,s);
            linear_extrude(1.5) snowman(s+rim,s);
        }
        translate([0,0,-0.5]) linear_extrude(h+1) snowman(s-1,s);
    }
}


translate([-o,o,0]) exp1_cutter(s);
translate([o,o,0]) {
    exp2_cutter(s);
    exp2_cutter(s/2);
}
translate([-o,-o,0]) exp3_cutter(s);
translate([o,-o,0]) {
    snowman_cutter(s);
    translate([0,-5,0]) snowman_cutter(s/2);
}
