include <circle.scad>
include <semicircle.scad>
include <eye.scad>
include <heart.scad>
include <square.scad>

translate([-35,35,0]) {
    for (i = [0:3]) {
        simple_circle(i*8+3);
    }
}
translate([35,35,0]) {
    for (i = [0:3]) {
        simple_circle(i*8+6);
    }
}
translate([-30,-25,0]) {
    translate([0,3,0]) semicircle(21);
    translate([0,-3,0]) semicircle(8);
}
translate([-45,-5,0]) semicircle(11);
translate([-20,-5,0]) semicircle(6);
translate([-80,-5,0]) semicircle(14);

translate([35,-35,0]) eye(16);
translate([55,-35,0]) eye(8);

translate([32,-15,0]) heart(8);
translate([0,-44,0]) heart(12);
translate([0,-20,0]) heart(16);

translate([52, -20, 0]) {
    squarec(20);
    translate([6, 6, 0]) squarec(8);
}
translate([67, -40, 0]) squarec(12);