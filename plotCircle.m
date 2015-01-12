function plotCircle(x0, y0, r)
    ang=linspace(0, 2*pi, 64);
    xp = r*cos(ang);
    yp = r*sin(ang);
    plot(x0 + xp, y0 + yp);
end
