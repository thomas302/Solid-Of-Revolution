# Solid-Of-Revolution
OpenSCAD script that can be used to generate solids of revolution.

## Requirements

In order to use the script you need to download and install [OpenSCAD](https://openscad.org/). Once OpenSCAD is installed, download the script and open it.

## Using The Script
Upon running the script, a solid of revolution is generated based on the functions entered as f(x) and g(x).  In order to do a standard revolution around the x-axis, set g(x) equal to 0 and f(x) to your desired function.

To do a standard revolution around the y axis set f(x) to the function to be graphed, and g(x) to the maximum value of f(x) on the interval.  This value is normally f(x2).

## In Progress Features
1. Volume of solids of revolution
  a. feature is in a semi functional state. ~~It returns the volume of a solid of revolution around the x axis, I dont know why (it should be around the y axis)~~ It returns the volume of cylinders revolved around the x-axis.
3. Revolution Around arbitrary axis
  a. No Progress as of right now.  Will likely work by rotating points such that the arbitrary axis is the x axis, then rotatting around the x axis, then rotating the resultant solid back into place.

## Useful Resources

The [OpenSCAD Cheatsheet](https://openscad.org/cheatsheet/) contains a list of functions and features built in to the program.  The section with mathematical functions is especially useful.

[spolearninglab.com](https://spolearninglab.com/curriculum/lessonPlans/hacking/resources/software/3d/openscad_intro.html) has some helpful documentation of openSCAD as well.

[Official OpenSCAD Documentation](https://en.wikibooks.org/wiki/OpenSCAD_User_Manual)
