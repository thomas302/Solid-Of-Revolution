//use <revolve_util.scad>;
//x1 and x2are the start and stop points for the region

//Revolves a polygon defined by an input array of points around the x axis. 
module revolve_around_x(input_points = [[0,0],[5,5],[10,0]]){
    
    // uncomment line below to view the functions graph
    // rotate([0,0,90]) polygon( points=generated_points )

    // Positions the solid so that it is centered around the x-axis, comment the below line out to revolve around the y-axis.
    
    echo(input_points);
    
    rotate([-90,0,-90])

    rotate_extrude($fn=200) 
    // The a 90 degree rotation around the z-axis lets this generate a revolved solid with equivalent to a revolve around the x-axis. Comment the below line out to revolve around the y-axis.
    rotate([0,0,90])
    
    polygon( points=input_points );
}
//Revolves a polygon defined by an input array of points around the y axis. 
module revolve_around_y(input_points = [[0,0],[5,5],[10,0]]){
    
    // uncomment line below to view the functions graph
    //rotate([0,0,0]) polygon( points=generated_points )

    // Positions the solid so that it is centered around the x-axis, comment the below line out to revolve around the y-axis.
    
    echo(input_points);
    
    rotate([-90,0,0])

    rotate_extrude($fn=200) 
    // The a 90 degree rotation around the z-axis lets this generate a revolved solid with equivalent to a revolve around the x-axis. Comment the below line out to revolve around the y-axis.
    rotate([0,0,0])
    
    polygon( points=input_points );
}

x1 = 0;
x2 = 4;

//y1 = 1;
//y2 = 1;

step = 0.05;

function f(x) = x^2;

function g(x) = 3*x + 4;

generated_points = [ for (a = [x1 : step : x2]) [ a, f(a)], 
    for (b = [x2 : -step : x1]) [ b, g(b)] ];
    
polygon(generated_points);
echo(generated_points);
echo("________________________________");

revolve_around_x(generated_points);
    
//revolve_around_y(generated_points);
