//x1, y1 and x2,y2 form the value pairs at the beggining and end of the graph/region

x1 = 0;
x2 = 4;

y1 = 1;
y2 = 1;

step = 0.05;

function f(x) = x +2;

function g(x) = x + 4;

generated_points = [ for (a = [x1 : step : x2]) [ a, f(a)], for (b = [x2 : -step : x1]) [ b, g(b)] /*, [x2, g(x2)], [x1, g(x1)]*/ ];
    
//polygon(generated_points);
echo(generated_points);
// uncomment line below to view the functions graph
// rotate([0,0,90]) polygon( points=generated_points )

// The a 90 degree rotation around the z-axis lets this generate a revolved solid with equivalent to a revolve around the x-axis.
rotate([-90,0,0])
rotate_extrude($fn=200) 
rotate([0,0,90]) polygon( points=generated_points );