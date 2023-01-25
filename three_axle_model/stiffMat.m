%% Stiffness Matrix
function K = stiffMat(u, a, b1, b2, delta, C1, C2, C3)

% Author: Tahn Thawainin, AU Gavlab
%
% Description: A function to generate a stiffness matrix used in the three-axle
%              bicycle model (Wolfe)
%
% Inputs: u - longitudinal velocity
%         delta - steer angle (rad)
%         a - distance from tractor CG to front axle
%         b1 - distance from tractor CG to first rear axle
%         b1 - distance from tractor CG to second rear axle
%         C1-3 - cornering stiffness of front to rear axles (1-3)
%
% Outputs: K - (3x3) stiffness matrix

K_11 = (1/u) * (-cos(delta)*C1 - C2 - C3);
K_12 = (1/u) * (-a*cos(delta)*C1 + b1*C2 + b2*C3);
K_21 = (1/u) * (-a*cos(delta)*C1 + b1*C2 + b2*C3);
K_22 = (1/u) * (-(a^2)*cos(delta)*C1 + (b1^2)*C2 + (b2^2)*C3);

K = [K_11, K_12, 0;
     K_21, K_22, 0;
     0, 1, 0];
end