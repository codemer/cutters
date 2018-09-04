module square2(w) {
    linear_extrude(height = 1.5) {
        translate([-1,-1,0]) difference() {
            square(w+2);
            translate([1,1,0]) square(w-1);
        }
    }
}
module squarec(w) {
    square2(w);
    linear_extrude(height = 8) {
        difference() {
            square(w);
            translate([1,1,0]) square(w-2);
        }
    }
}

//squarec(15);