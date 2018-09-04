module simple_heart(w) {
  square(w);
  translate([w/2, w, 0]) circle(w/2);
  translate([w, w/2, 0]) circle(w/2);
}

module hollow_heart(w) {
    difference() {
        simple_heart(w);
        translate([1,1,0]) simple_heart(w-1.5);
    }
}

module heart(w) {
    linear_extrude(height = 1.5) {
        translate([-1,-1,0]) difference() {
            simple_heart(w+2);
            translate([1,1,0]) simple_heart(w);
        }
    }
    linear_extrude(height = 8) hollow_heart(w);
}

//heart(10);