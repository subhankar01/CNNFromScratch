classdef CNN < handle
properties
layers = []
end
methods
    function addLayer(CNN, type, numberOfFilters, filterDimension, activationFunction, prevDimension)
    CNN.layers = [CNN.layers; [type, numberOfFilters, filterDimension, activationFunction, prevDimension] ];
  end 
  function constructLayers(CNN)
    % CNN.layers = Layers(CNN.layers)
    CNN.layers = Layer(CNN.layers);
  end
  function output = forwardPropagation(CNN, input)
    prev_output = input;
    size_cnn_layers = size(CNN.layers) - 1;
    for i = 1:size_cnn_layers(2)
      prev_output = CNN.layers(i).layerFunction(prev_output);       
      size(prev_output)
     end
     output = prev_output;
%      disp(output)
  end
  
  function output = backwardPropagation(CNN, actualY, input)
      for i = flip(1:size(CNN.layers)-1)
          if(i~=1)
              input = CNN.layers(i);
          end
          k = i+1;
          if(i~=size(CNN.layers)-1)
              k = i; 
          end
          err = calculateError(err, actualY, CNN.layers(k), input);
      end
  end
  
end
end
