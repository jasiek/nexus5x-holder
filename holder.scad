use <MCAD/shapes.scad>

thickness = 2;
size = 80;
h = 20;
radius = 1;

difference() {
    // Outer box
    box(size + 2 * thickness, size + 2 * thickness, h);
    // Inner space
    translate([0, thickness, 0]) {
        box(size, size, h - 2 * thickness);
    }
    // Inner space
    translate([0, thickness, thickness]) {
        box(size * 0.75, size, h);
    }
    
    // Cable stub
    translate([0, - size / 3 - thickness, thickness]) {
        box(size / 3, size / 3, h);
    }
}