include <defaults.scad>

module simple_heart(w) {
  square(w);
  translate([w/2, w, 0]) circle(w/2, $fn=64);
  translate([w, w/2, 0]) circle(w/2, $fn=64);
}

module hollow_heart(w) {
    difference() {
        simple_heart(w);
        translate([0.5,0.5,0]) simple_heart(w-1);
    }
}

module heart(w) {
    linear_extrude(height = rim_h) {
        translate([-rim/2,-rim/2,0]) difference() {
            simple_heart(w+rim);
            translate([rim/2,rim/2,0]) simple_heart(w);
        }
    }
    linear_extrude(height = base_height) hollow_heart(w);
}

//heart(10);