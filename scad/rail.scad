module rail(num_of_slots)
{
	m3 = 3; // (mm)
	hole_space_length = 18.5+12.80;
	rail_length = num_of_slots*hole_space_length;
	difference()
	{
		translate([0,0,0])cube([rail_length+12.5,25.5,15.5]);
		translate([-1,3,2])cube([rail_length+14.5,19.5,14]);
		for ( i = [1:rail_length] ) {
			if (i == 1) {
				translate([12.8,15.75-8-m3,-1])
					cube([18.5,m3,5]);
				translate([12.80,17.75,-1])
					cube([18.5,m3,5]);
			} else {
				translate([((i*hole_space_length)-18.5),15.75-8-m3,-1])
					cube([18.5,m3,5]);
				translate([((i*hole_space_length)-18.5),17.75,-1])
					cube([18.5,m3,5]);
			}
		}
		
	}
}


rail(20);

