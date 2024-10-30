//Title: Slug Trap
//Author: Alex English - ProtoParadigm
//Date: 5-21-2012
//License: Creative Commons

//Note: This is a beer based slug trap for killing slugs in the garden.  Just put some beer in the trap and place in the garden with the cover on.

outer_radius = 52;
inner_radius = 40;
height = 25;
post_height = 20;
wall_thickness = 3;

module slug_trap()
{
	difference()
	{
		cylinder(r1=outer_radius, r2=inner_radius, h=height);
		translate([0, 0, wall_thickness]) cylinder(r=inner_radius - wall_thickness, height - wall_thickness + 1);
	}
	for(x = [0, 360/3, 360/3*2]) rotate([0, 0, x]) translate([0, inner_radius - wall_thickness, 0]) cylinder(r=wall_thickness, h = height + post_height);
}

module slug_trap_lid()
{
	difference()
	{
		cylinder(r1=outer_radius, r2 = wall_thickness, height);
		for(x = [0, 360/3, 360/3*2]) rotate([0, 0, x]) translate([0, inner_radius - wall_thickness, 0]) cylinder(r = wall_thickness + 1, h = 5);
		cylinder(r1 = inner_radius/2, r2 = 2, height-3);
	}
}

//slug_trap();
slug_trap_lid();