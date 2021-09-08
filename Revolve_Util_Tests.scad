include <Revolve_Util.scad>;


//Rotate Point Test

/*
$fn = 50;

translate([1,0]) circle(.25);

translate(rotate_point(90, [1,0])) circle(.25);

echo(rotate_point(90, [1,0]));
*/

// Shell volume test
x1 = 0;
x2 = 3;
step = 0.005;

function f(x) = 1;

function g(x) = 0;

fx_points = [for(l = [x1:step:x2]) rotate_point(0,[l, f(l)])];
gx_points = [for(k = [x2:-step:x1]) rotate_point(0, [k, g(k)])];

generated_points = fx_points;

revolve_around_x(cat(fx_points, [rotate_point(0,[x2,0]),rotate_point(0,[x1,0])]));
polygon(cat(fx_points, [[x2,0],[x1,0]]));

volume = total_volume(generated_points, dx = step);
echo("_____ Volume _____");

echo(volume);

echo(total_volume(generated_points, dx = step));
