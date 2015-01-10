function h = plot2dContourInterp(x, y, val)    
    [x_interp, y_interp, val_interp] = interpolateData(x, y, val);
    [C, h] = contour(x_interp, y_interp, val_interp);
    grid on
    clabel(C,h)    
end