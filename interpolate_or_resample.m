% the vector which has the wrong length and needs to be resampled
a = [1:100]; 

% tell the function how many values we want to have in the end
x = 1 : numel(a);

% and tell the function at which positions we want interpolated values
max_val = 200; % target length
xp = linspace(x(1), x(end), max_val); %// Specify output points

% call the function. the result will have length max_val and interpolated values from a
out = interp1(x, a, xp);
