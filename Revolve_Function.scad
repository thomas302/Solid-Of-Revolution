include <Revolve_Util.scad>;

x1 = 1;
x2 = 3;
step = 0.05;

function f(x) = 1/x;

function g(x) = 0;

fx_points = [for(l = [x1:step:x2]) [l, f(l)]];
gx_points = [for(k = [x2:-step:x1]) [k, g(k)]];

generated_points = cat(fx_points, gx_points);
    
//translate([0,0]) polygon(generated_points);

echo(generated_points);
echo("________________________________");

revolve_around_x(generated_points, translation = [0,0]);
    
//revolve_around_y(generated_points);
    
