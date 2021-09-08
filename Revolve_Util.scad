//Concatanates to lists
function cat(L1, L2) = [for(L=[L1, L2], a=L) a] ;

// adds all the value in a list      
function add(v, i = 0, r = 0) = i < len(v) ? add(v, i + 1, r + v[i]) : r;
 
//Rotates a given point by theta in an anticlockwise direction (if theta is positive).
function rotate_point(theta=0, point = [0,0]) = 
    [point[0]*cos(theta) - point[1]*sin(theta),
     point[1]*cos(theta) + point[0]*sin(theta)];

function shell_area(point) = (PI*point[0])*point[0];

function shell_volume(point, dx) = shell_area(point)*dx;


function total_volume(points, dx) = add([for(z = points) shell_volume(points, dx)]);
  
   
//Revolves a polygon defined by an input array of points around the y axis.  
module revolve_around_x(input_points = [[0,0],[5,5],[10,0]], translation = [0,0]){
    
    // uncomment line below to view the functions graph
    // rotate([0,0,90]) polygon( points=generated_points )

    // Positions the solid so that it is centered around the x-axis, comment the below line out to revolve around the y-axis.
    
    echo(input_points);
    
    rotate([-90,0,-90])

    rotate_extrude($fn=200) 
    // The a 90 degree rotation around the z-axis lets this generate a revolved solid with equivalent to a revolve around the x-axis. Comment the below line out to revolve around the y-axis.
    rotate([0,0,90])
    
    translate(translation)
    
    polygon( points=input_points );
}


//Revolves a polygon defined by an input array of points around the y axis.
module revolve_around_y(input_points = [[0,0],[5,5],[10,0]], translation = [0,0]){
    
    // uncomment line below to view the functions graph
    //rotate([0,0,0]) polygon( points=generated_points )

    // Positions the solid so that it is centered around the x-axis, comment the below line out to revolve around the y-axis.
    
    echo(input_points);
    
    rotate([-90,0,0])

    rotate_extrude($fn=200) 
    // The a 90 degree rotation around the z-axis lets this generate a revolved solid with equivalent to a revolve around the x-axis. Comment the below line out to revolve around the y-axis.
    rotate([0,0,0])
    
    translate(translation)
    
    polygon( points=input_points );
}
