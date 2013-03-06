//color("Blue") import("body_panel_top.stl");
//color("Blue") import("body_panel_front.stl");
//color("Blue") import("body_panel_left.stl");
//translate(v = [0,-2,0]) color("Green") import("body_riser_NH_v2.stl");
//translate(v = [(overall_width/2)+5, 52, 90]) rotate(a = [180,90,0]) color("Red") import("Arduino_Mega_8mm_Mount001.stl");

// Phone Dimensions
// Current dimenensions for the Kyocera Hydro
// Original Archos 28 settings shown after the 
// comment on each line
phone_length = 115; // 101 115
phone_width = 62; // 53 62
phone_depth = 18; // 10 13  Be sure to include space (~5mm) for the distance sensor
phone_back_radius = 2; // 4
cutout_height = 14; // 58
cutout_width = 24; // 42
cutout_vertical_offset = 39; // 14
hood_mount = false; // false

// Computed Dimensions
overall_width = phone_width + 15;
overall_length = phone_length + 6;
mount_width = (overall_width/2) - 2.8;


// Full body
//translate(v = [-(overall_width/2), 0, (overall_width/2)]) rotate(a = [0,90,0]) body_panel_front();
//translate(v = [0, (overall_length/2)+1.6, (overall_width/2)]) rotate(a = [0,90,-90]) body_panel_left();
//translate(v = [0, -(overall_length/2)-1.6, (overall_width/2)]) rotate(a = [0,90,90]) body_panel_right();
//translate(v = [0,0,-3.8]) body_panel_bottom();
//translate(v = [(overall_width/2), 0, (overall_width/2)]) rotate(a = [0,-90,0]) body_panel_back();
//translate(v = [0,0,overall_width+3.8]) rotate(a = [180,0,0]) body_panel_top();
//translate(v = [-(overall_width/2)+phone_depth+6,43,(overall_width/2)]) rotate(a = [0,90,0]) phone_bar();
//translate(v = [-(overall_width/2)+phone_depth+6,6.2,(overall_width/2)]) rotate(a = [0,90,0]) phone_bar();
//translate(v = [-(overall_width/2)+phone_depth+6,-37.3,(overall_width/2)]) rotate(a = [0,90,0]) phone_bar();


// To Print
//body_panel_front();
//body_panel_left();
//body_panel_right();
//body_panel_bottom();
//body_panel_back();
//body_panel_top();
phone_bar();


module body_panel_bottom() {
	union() {
		difference() {
			translate(v = [0,0,1.8]) cube(size = [overall_width,overall_length+3.2,4], center = true);

			translate(v = [(overall_width/2)-4.8,26.4,0]) cube(size = [2.9,2.9,12], center = true);
			translate(v = [-(overall_width/2)+4.8,26.4,0]) cube(size = [2.9,2.9,12], center = true);
			translate(v = [(overall_width/2)-4.8,-26.4,0]) cube(size = [2.9,2.9,12], center = true);
			translate(v = [-(overall_width/2)+4.8,-26.4,0]) cube(size = [2.9,2.9,12], center = true);


			translate(v = [16.5,(overall_length/2)-3.2,0]) cube(size = [2.9,2.9,12], center = true);
			translate(v = [-19.6,(overall_length/2)-3.2,0]) cube(size = [2.9,2.9,12], center = true);
			translate(v = [16.5,-(overall_length/2)+3.2,0]) cube(size = [2.9,2.9,12], center = true);
			translate(v = [-19.6,-(overall_length/2)+3.2,0]) cube(size = [2.9,2.9,12], center = true);

			translate(v = [26.4,12.7,0]) cube(size = [2.9,2.9,12], center = true);
			translate(v = [26.4,-12.7,0]) cube(size = [2.9,2.9,12], center = true);
			translate(v = [-26.4,12.7,0]) cube(size = [2.9,2.9,12], center = true);
			translate(v = [-26.4,-12.7,0]) cube(size = [2.9,2.9,12], center = true);
			translate(v = [12.6,0,0]) cube(size = [2.9,2.9,12], center = true);
			translate(v = [-12.8,0,0]) cube(size = [2.9,2.9,12], center = true);

			translate(v = [0,38,4.6]) cube(size = [overall_width-10,14,6], center = true);
			translate(v = [0,-38,4.6]) cube(size = [overall_width-10,14,6], center = true);
			translate(v = [0,22,4.6]) cube(size = [overall_width-36,26,6], center = true);
			translate(v = [0,-22,4.6]) cube(size = [overall_width-36,26,6], center = true);
		}

	}	
}

module body_panel_top() {
	union() {
		difference() {
			translate(v = [0,0,1.8]) cube(size = [overall_width,overall_length+3.2,4], center = true);

			translate(v = [(overall_width/2)-4.8,26.4,0]) cube(size = [2.9,2.9,12], center = true);
			translate(v = [-(overall_width/2)+4.8,26.4,0]) cube(size = [2.9,2.9,12], center = true);
			translate(v = [(overall_width/2)-4.8,-26.4,0]) cube(size = [2.9,2.9,12], center = true);
			translate(v = [-(overall_width/2)+4.8,-26.4,0]) cube(size = [2.9,2.9,12], center = true);


			translate(v = [16.5,(overall_length/2)-3.2,0]) cube(size = [2.9,2.9,12], center = true);
			translate(v = [-19.6,(overall_length/2)-3.2,0]) cube(size = [2.9,2.9,12], center = true);
			translate(v = [16.5,-(overall_length/2)+3.2,0]) cube(size = [2.9,2.9,12], center = true);
			translate(v = [-19.6,-(overall_length/2)+3.2,0]) cube(size = [2.9,2.9,12], center = true);

			translate(v = [0,38,4.6]) cube(size = [overall_width-10,14,6], center = true);
			translate(v = [0,-38,4.6]) cube(size = [overall_width-10,14,6], center = true);
			translate(v = [0,0,4.6]) cube(size = [overall_width-10,44,6], center = true);
		}
	}	
}

module body_panel_left() {
	union() {
		difference() {
			translate(v = [0,0,.8]) cube(size = [overall_width,overall_width,1.6], center = true);
			translate(v = [(overall_width/2)-26,-(overall_width/2)+6,0]) cube(size = [18,16,4],center = true);
		}

		// Screw Mounts
		translate(v = [mount_width,18.5,4.6]) screw_mount();
		translate(v = [-mount_width,18.5,4.6]) screw_mount();
		translate(v = [mount_width,-17.5,4.6]) screw_mount();
		translate(v = [-mount_width,-17.5,4.6]) screw_mount();

	}
}

module body_panel_right() {
	union() {
		difference() {
			translate(v = [0,0,.8]) cube(size = [overall_width,overall_width,1.6], center = true);
			translate(v = [0,6xx,-3]) cylinder(r = 9.5, h = 8);
			translate(v = [-4,-28,0]) cube(size = [50,12,8], center = true);
		}

		// Screw Mounts
		translate(v = [mount_width,18.5,4.6]) screw_mount();
		translate(v = [-mount_width,18.5,4.6]) screw_mount();
		translate(v = [mount_width,-17.5,4.6]) screw_mount();
		translate(v = [-mount_width,-17.5,4.6]) screw_mount();

	}
}


module body_panel_front() {
	union() {
		difference() {
			translate(v = [0,0,.8]) cube(size = [overall_width,overall_length,1.6], center = true);
			translate(v = [0,cutout_vertical_offset,0]) cube(size = [cutout_width,cutout_height,4], center = true);
			if(hood_mount == true) {
				translate(v = [(cutout_width/2) + 6,cutout_vertical_offset,0]) cube(size = [2.9,2.9,4], center = true);
				translate(v = [-((cutout_width/2) + 6),cutout_vertical_offset,0]) cube(size = [2.9,2.9,4], center = true);
				translate(v = [0,cutout_vertical_offset-(cutout_height/2)-6,0]) cube(size = [2.9,2.9,4], center = true);
			}

			// Distance Sensor
			translate(v = [-8,13,-3]) cylinder(r = 9, h = 8);
			translate(v = [-8,-13,-3]) cylinder(r = 9, h = 8);
		}

		// Extra secure mount on top and bottom
		translate(v = [0,(overall_length/2)-1.5,phone_depth/2-2.5]) cube(size = [8,3,phone_depth-5], center = true);
		translate(v = [0,-(overall_length/2)+1.5,phone_depth/2-2.5]) cube(size = [8,3,phone_depth-5], center = true);

		// Support Struts
		translate(v = [(overall_width/2)-12, 0, 2]) cube(size = [6, overall_length, 2], center = true);
		translate(v = [-(overall_width/2)+12, 0, 2]) cube(size = [6, overall_length, 2], center = true);

		// Screw Mounts
		translate(v = [mount_width,26.4,4.6]) screw_mount();
		translate(v = [-mount_width,26.4,4.6]) screw_mount();
		translate(v = [mount_width,-26.4,4.6]) screw_mount();
		translate(v = [-mount_width,-26.4,4.6]) screw_mount();

		// Phone Brackets
//		translate(v = [(overall_width/2) - 6.5,43,(phone_depth/2)+2.5]) phone_bracket_curved();

		translate(v = [(overall_width/2) - 3.3,43,(phone_depth/2)+2]) phone_bracket();
		translate(v = [(overall_width/2) - 3.3,6.2,(phone_depth/2)+2]) phone_bracket();
		translate(v = [(overall_width/2) - 3.3,-37.3,(phone_depth/2)+2.5]) phone_bracket();
		translate(v = [-(overall_width/2) + 3.3,43,(phone_depth/2)+2.5]) phone_bracket();
		translate(v = [-(overall_width/2) + 3.3,6.2,(phone_depth/2)+2.5]) phone_bracket();
		translate(v = [-(overall_width/2) + 3.3,-37.3,(phone_depth/2)+2.5]) phone_bracket();
	}
}

module body_panel_back() {
	union() {
		difference() {
			translate(v = [0,0,.8]) cube(size = [overall_width,overall_length,1.6], center = true);
			translate(v = [25.2,41.3,-3]) cylinder(r = 2, h = 10);
			translate(v = [25.2,-41.3,-3]) cylinder(r = 2, h = 10);
			translate(v = [-22.7,-40.3,-3]) cylinder(r = 2, h = 10);
			translate(v = [-22.7,34.8,-3]) cylinder(r = 2, h = 10);
		}

		// Screw Mounts
		translate(v = [mount_width,26.4,4.6]) screw_mount();
		translate(v = [-mount_width,26.4,4.6]) screw_mount();
		translate(v = [mount_width,-26.4,4.6]) screw_mount();
		translate(v = [-mount_width,-26.4,4.6]) screw_mount();

		// Arduino Mounts
		translate(v = [25.2,41.3,1]) arduino_riser();
		translate(v = [25.2,-41.3,1]) arduino_riser();
		translate(v = [-22.7,-40.3,1]) arduino_riser();
		translate(v = [-22.7,34.8,1]) arduino_riser();

	}
}


module screw_mount() {
	difference() {
		cube(size = [5.6,6.5,6.5], center = true);
		cube(size = [6,2.9,2.9], center = true);
	}
}

module phone_bracket() {
	difference() {
		cube(size = [6.5,6.5,phone_depth+2.5], center = true);
		translate(v = [0,0,(phone_depth/2)-5]) cylinder(r = 1.6, h = phone_depth, $fn=10, center = true);
	}
}

module phone_bracket_curved() {
	difference() {
		cube(size = [13,6.5,phone_depth + 4], center = true);
		translate(v = [-4-phone_back_radius,0,-2]) cube(size = [13,7.5,phone_depth+4], center = true);
		translate(v = [-4,0,-2-phone_back_radius]) cube(size = [13,7.5,phone_depth+4], center = true);
		translate(v = [2.5-phone_back_radius,0,(phone_depth/2)-phone_back_radius], $fn=25) rotate(a = [90,0,0]) cylinder(r = phone_back_radius, h = 7.5, center = true);
	}
}

// Arduino Mount Riser
module arduino_riser() {
	difference() {
		cylinder(r = 4, h = 5);
		translate(v = [0,0,-3]) cylinder(r = 2, h = 10);
	}
}

module phone_bar() {
	difference() {
		cube(size = [overall_width, 6.5, 4], center = true);
		translate(v = [(overall_width/2)-3.2,0,]) cylinder(r = 1.75, h = 20, center = true);
		translate(v = [-(overall_width/2)+3.2,0,]) cylinder(r = 1.75, h = 20, center = true);
	}
}


