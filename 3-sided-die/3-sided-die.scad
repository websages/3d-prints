// basic 3-sided die shape
intersection() {
  translate([-10,-10,0]) rotate([0,0,0]) {
    intersection() { 
  	  translate([0,0,-10]) cube(size=20);
	  translate([0,0,-10]) cylinder(10,10,10);
    }
  }

  translate([-10,0,0]) rotate([0,90,180]) {
    intersection() { 
 	  translate([0,0,-10]) cube(size=20);
	  translate([0,0,-10]) cylinder(10,10,10);
    }
  }

  translate([0,-10,-10]) rotate([90,270,0]) {
	intersection() { 
	  translate([0,0,-10]) cube(size=20);
	  translate([0,0,-10]) cylinder(10,10,10);
    }
  }
}
