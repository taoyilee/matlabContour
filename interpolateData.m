% 2D Contour Plotter with vectorized data
%     Copyright (C) 2015 Tao-Yi Lee
% 
%     This program is free software: you can redistribute it and/or modify
%     it under the terms of the GNU General Public License as published by
%     the Free Software Foundation, either version 3 of the License, or
%     (at your option) any later version.
% 
%     This program is distributed in the hope that it will be useful,
%     but WITHOUT ANY WARRANTY; without even the implied warranty of
%     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
%     GNU General Public License for more details.
% 
%     You should have received a copy of the GNU General Public License
%     along with this program.  If not, see <http://www.gnu.org/licenses/>.

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