// inside_width is the wall width of the top and rounded support
// outside_width is the wall width of all the rest of the piece
// gap is the width of the door where you would hang it + some tolerance value
// height is the height of the piece as sitting on the printbed 

module hook(height = 15, inside_width = 1.5, outside_width=2, gap = 20)
{
	//rounded support
	translate([0,5, height/2])
		rotate([0,90,0])
			scale([1,0.5,1])
				cylinder(h = inside_width, $fn=20, r = height/2);
	translate([0,5,0])
      cube([inside_width, height-5, height]);

	//	top
	translate([0,height, 0]) cube([gap, inside_width, height]);

	// main
 	translate([gap + 6, outside_width-height*2-outside_width, 0])
      rotate([0,0,10])
	  	cube([outside_width, height * 3+inside_width, height]);

	//actual hook
	 	translate([gap + 20, -31, 0])
    	  rotate([0,0,0])
	  		cube([outside_width, height + inside_width, height]);

	 	translate([gap + 20, -31, 0])
    	  rotate([0,0,90])
	  		cube([outside_width, height + inside_width - 2, height]);
		
		// rounded end
//		 translate([rad-outside_width,0,0])
//			scale([1,0.6,1])
//			{
//				translate([0,height, height/2])
//			   	rotate([0,90,0])
//						cylinder(h = outside_width, $fn=20, r = height/2);
//				cube([outside_width, height, height]);
//			}
}

hook();