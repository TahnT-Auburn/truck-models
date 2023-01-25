%% Inertial matrix
function M = inertMat(m, u, J)

% Author: Tahn Thawainin, AU Gavlab
%
% Description: A function to generate the inertial matrix used in the three-axle
%              bicycle model (Wolfe)
%
% Inputs: m - mass of the tractor
%         u - longitudinal velocity
%         J - tractor mass moment of inertia
%
% Outputs: M - (3x3) mass matrix

M = [m, 0, u*m;
     0, J, 0;
     0, 0, 1];
end