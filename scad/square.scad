include <defaults.scad>

module square2(w) {
    linear_extrude(height = rim_h) {
        // This is just the rim
        translate([-rim,-rim,0]) difference() {
            square(w+rim*2);
            translate([rim,rim,0]) square(w-1);
        }
    }
}
module squarec(w) {
    square2(w);
    linear_extrude(height = base_height) {
        difference() {
            square(w);
            translate([1,1,0]) square(w-2);
        }
    }
}

//squarec(15);