load('mnist.mat');
dataset = [];
%for i = 1:size(trainX)(1)
%dataset = [dataset; deflatten(trainX(i, :))];
%end
dataset = deflatten(trainX(1, :));
network = CNN;
network.addLayer(1, 5, 3, 1, 1);
network.addLayer(1, 5, 3, 1, 5);
network.addLayer(2, 5, 2, 1, 5);
network.constructLayers()
output = network.forwardPropagation(dataset)

%Auto initialization of output

% Manually verify forward propagation
% Add fully connected layer
% Remove size matrix and correct it
% Normalization of weights before doing anything

%Error for fully connected similar to regular network. Once we have this
%value, we back propagate throguh convolution bp

