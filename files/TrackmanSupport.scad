
module trackman_support () {
    difference() {

        translate([0,31.5,0]) rotate([90,0,0]) linear_extrude(31.5) {
            polygon([[0,0],[14.2,0],[14.2,4.1],[11.5,4.1],[2,12.4],[0,12.4]]);
        }

        union () {
            color("darkgreen") translate([14.5-1.6*cos(40),5,0]) rotate([40,0,90]) 
            union() {
                difference() {
                    linear_extrude(1.6+5) {
                            offset(r=0.25) polygon([[(23.2-20.5)/2,-2],
                                [23.2-(23.2-20.5)/2,-2],
                                [23.2-(23.2-20.5)/2,2.5],
                                [23.2,2.5],
                                [23.2,22.1],
                                [23.2-8.9,22.1],
                                [23.2-8.9,17.4+2], // +2 to remove overhang
                                [23.2-17.6,17.4+2],
                                [23.2-17.6,13.2],
                                [0,13.2],
                                [0,2.5],
                                [(23.2-20.5)/2,2.5]   
                            ]);
                        }
                     //translate([2,6.0,-0.01]) cube([2,1.5,2]);
                     //translate([15,6.0,-0.01]) cube([3,1.5,2]);
                }
                translate([23.2-6,22.1-14+0.5,0]) scale([1,1,2.25]) rotate([-90,0,0]) cylinder(h=14,r=1,$fn=100);
                translate([1,17.4-6.6,0]) scale([1,1.5,1.85]) rotate([0,90,0]) cylinder(h=13,r=1,$fn=100);
                //translate([5.5,6,0]) rotate([0,90,0]) cylinder(h=9,r=1,$fn=100);
            }
            translate([-0.01,25.7,-0.01]) cube([5.0,2.5,15]);
            translate([-0.01,12.7,-0.01]) cube([4.25,3.3,15]);
            translate([-0.01,10.4,17.6*sin(45)-3]) cube([4.0,8,5]);
            translate([-0.01,4,-0.01]) cube([3.0,5.0,15]);
            translate([-0.01,4,-0.01]) cube([4.5,0.75,15]);
            translate([-0.01,6,6.0]) cube([4.5,3.0,15]);
            translate([-0.01,4,8.6]) cube([4.5,3.0,15]);
            //translate([4.8,-0.01,-0.01]) cube([3.6,32.0,3.6]);
            translate([4.8,-0.01,-0.01]) cube([3.6,32.0,1.8]);
            translate([4.8+1.8,-0.01,1.8]) rotate([-90,0,0]) cylinder(h=32.0,r=1.8,$fn=100);
            translate([8.25,5.,-0.01]) cube([8.0,24.1,10]);
            translate([11,5.,-0.01]) cube([8.0,24.1,10]);
            //translate([8.0,5,-0.01]) cube([8.0,4.5,8.0]);
            //translate([8.0,20.5,-0.01]) cube([8.0,9.1,8.0]);
            translate([13.2,29,-0.01]) cube([8.0,24.6,4.2]);
        }
    }
}

trackman_support();
translate([0,-5,0]) mirror([0,1,0]) trackman_support();