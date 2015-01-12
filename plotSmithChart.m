function plotSmithChart()
    close all
    pts = 8192;
    for zz = 0:0.01:0.2
        ii = linspace(-100, 100, pts);
        gamma = z2gamma(zz + 1i*ii, 1);        
        plot(real(gamma), imag(gamma), 'color', 'blue', 'LineWidth', 1, 'LineStyle', '--') ;        
        hold on        
    end
    for zz = 0.2:0.02:0.3
        ii = linspace(-100, 100, pts);
        gamma = z2gamma(zz + 1i*ii, 1);        
        plot(real(gamma), imag(gamma), 'color', 'blue', 'LineWidth', 1, 'LineStyle', '--') ;        
        hold on        
    end
    
    for zz = [0:0.1:1  1.2 1.4 1.6 1.8 2 3 4 5  10 20 50]     
        ii = linspace(-100, 100, pts);
        gamma = z2gamma(zz + 1i*ii, 1);        
        plot(real(gamma), imag(gamma), 'color', 'blue', 'LineWidth', 1, 'LineStyle', '-') ;                
        gamma0 = z2gamma(zz, 1);        
        text(gamma0, 0, num2str(zz));
    end
    
    ii_oneside = [0:0.05:1 1.2 1.4 1.6 1.8 2 3 4 5 10 20 50];
    for ii = [-fliplr(ii_oneside) ii_oneside]
        zz = linspace(0, 1 , pts);        
        gamma = z2gamma(zz + 1i*ii, 1)   ;
        plot(real(gamma), imag(gamma), 'color', 'blue', 'LineWidth', 1, 'LineStyle', '-') ;                
        hold on
        gamma0 = z2gamma(1i*ii, 1);
        text(real(gamma0), imag(gamma0), num2str(ii));
    end
    
    ii_oneside = [0:0.2:1 1.2 1.4 1.6 1.8 2 3 4 5 10 20 50];
    for ii = [-fliplr(ii_oneside) ii_oneside]
        zz = linspace(1, 5 , pts);        
        gamma = z2gamma(zz + 1i*ii, 1)   ;
        plot(real(gamma), imag(gamma), 'color', 'blue', 'LineWidth', 1, 'LineStyle', '-') ;                
        hold on
        gamma0 = z2gamma(1i*ii, 1);
        text(real(gamma0), imag(gamma0), num2str(ii));
    end
    
    ii_oneside = [0:0.5:1 1.4 1.8 2 3 4 5 10 20 50];
    for ii = [-fliplr(ii_oneside) ii_oneside]
        zz = linspace(5, 10 , pts);        
        gamma = z2gamma(zz + 1i*ii, 1)   ;
        plot(real(gamma), imag(gamma), 'color', 'blue', 'LineWidth', 1, 'LineStyle', '-') ;                
        hold on
        gamma0 = z2gamma(1i*ii, 1);
        text(real(gamma0), imag(gamma0), num2str(ii));
    end
    
end