% Forcing Matrix
function F = forceMat(a, delta, C1)

% Author: Tahn Thawainin, AU Gavlab
%
% Description: A function to generate the forcing matrix used in the three-axle
%              bicycle model (Wolfe)
%
% Inputs: a - distance from tractor CG to front axle
%         delta - steer angle (rad)
%         C1 - cornering stiffness at first axle
%
% Outputs: F - (3x1) mass matrix

F = [cos(delta)*C1;
     a*cos(delta)*C1;
     0];
end
