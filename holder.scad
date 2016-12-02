use <MCAD/shapes.scad>

thickness = 2;
size = 80;
h = 20;
radius = 1;


difference() {
    // Outer box
    roundedBox(size + 2 * thickness, size + 2 * thickness, h, 1);
    

    // Inner space
    translate([0, thickness, 0]) {
        box(size, size + 5, h - 2 * thickness);
    }
    
    // Inner space
    translate([0, thickness, thickness]) {
        box(size * 0.75, size, h);
    }
    
    // Cable stub
    translate([0, - size / 3 - thickness, thickness]) {
        box(size / 3, size / 3, h);
    }
    
    
    translate([-30, -30, -h/2]) {
        for (i = [0:size / 4:size - 1], j = [0: size / 4: size - 1]) {
            translate([i, j, 0]) octagon(15, h / 2);
        }
    }
}
