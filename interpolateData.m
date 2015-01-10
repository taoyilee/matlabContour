function [x_interp, y_interp, val_interp] = interpolateData(x, y, val)
    disp(['Interpolating form ' num2str(length(x)) ' points ...' ]);
    
    xcolVectorFormat = transColumnVector(x);
    ycolVectorFormat = transColumnVector(y);
    valcolVectorFormat = transColumnVector(val);
    interpolator  = scatteredInterpolant(xcolVectorFormat, ...
        ycolVectorFormat, valcolVectorFormat, 'natural');
    
    min_x = min(x);
    max_x = max(x);
    min_y = min(y);
    max_y = max(y);
    
    ovsFactor  = 2;
    x_len = ovsFactor*length(x);
    y_len = ovsFactor*length(y);
    
    [x_interp, y_interp] = meshgrid(linspace(min_x, max_x, x_len), ...
        linspace(min_y, max_y, y_len));
    val_interp = interpolator(x_interp, y_interp);
end