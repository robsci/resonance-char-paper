function plot_e_nu_trends

    Colour_cube = [0 0 0
            213/255 94/255 0 % Vermillion
            230/255 159/255 0 % Orange
            240/255 228/255 66/255 % Yellow
            0 158/255 115/255 % Bluish green
            86/255 180/255 233/255 % Sky blue
            0 114/255 178/255 % Blue
            204/255 121/255 167/255 % Reddish purple
            0.5 0.5 0.5]; % Gray

    % Data from resonance_fluxes.nb
    e_data12 = [0.05, 5.858e-6; 0.3, 0.000348937; 0.5, 0.00212336; 0.7, 0.00606875; 0.95, 0.0134315; 0.99, 0.0151526];
    e_data13 = [0.05, 0.0000117947; 0.3, 0.000100109; 0.5, 0.00122221; 0.7, 0.00493451; 0.95, 0.0131254; 0.99, 0.0150047];
    e_data23 = [0.05, 8.21449e-6; 0.3, 0.00141763; 0.5, 0.00529747; 0.7, 0.0111033; 0.95, 0.018834; 0.99, 0.0205877];
    e_data25 = [0.05, 8.42378e-6; 0.3, 0.000153722; 0.5, 0.00141111; 0.7, 0.00503526; 0.95, 0.0127566; 0.99, 0.0145667];
    e_data34 = [0.05, 1.07717e-6; 0.3, 2.94956e-6; 0.5, 5.80487e-6; 0.7, 0.0000126471; 0.95, 0.0000278118; 0.99, 0.0000428484];
    
    figure;
    hold on
    plot(e_data12(:,1),e_data12(:,2),'-','Color',Colour_cube(7,:),'LineWidth',2.2)
    plot(e_data13(:,1),e_data13(:,2),'--','Color',Colour_cube(7,:),'LineWidth',2.2)
    plot(e_data23(:,1),e_data23(:,2),'-','Color',Colour_cube(3,:),'LineWidth',1.6)
    plot(e_data25(:,1),e_data25(:,2),'--','Color',Colour_cube(3,:),'LineWidth',1.6)
    plot(e_data34(:,1),e_data34(:,2),'-','Color',Colour_cube(2,:),'LineWidth',1.0)
    hold off
    axis([0.0, 1.0, -0.001, 0.022]);
    box on
    l = legend('\large{}$1$:$2$', '\large{}$1$:$3$', '\large{}$2$:$3$', '\large{}$2$:$5$','\large{}$3$:$4$');
    set(l,'Box', 'off','Color','none');
    set(l, 'Position', [0.2 0.6 0.2 0.25]);
    %ylabel('\Large{}RMS $\Delta p_\mathrm{jump}/(\dot{p}_\mathrm{ad} \tau_\mathrm{res})$\vspace{0.2cm}')
    ylabel('\Large{}RMS relative enhancement $\delta p_\mathrm{RMS}$\vspace{0.2cm}')
    xlabel('\Large{}Eccentricity $e$')
    set(gca,'YTickLabel',{'$0.000$','','$0.004$','','$0.008$','','$0.012$', '', '$0.016$', '', '$0.020$'})
    set(gca,'XTickLabel',{'$0.0$','$0.2$','$0.4$','$0.6$','$0.8$','$1.0$'})
    
    laprint(gcf,'e_rms_p')
    

    
	n1 = [1/2, 0.0134315; 1/3, 0.0131254; 1/4, 0.0137763; 1/5, 0.013967; 1/6, 0.0139938; 1/7, 0.0139997; 1/8, 0.0139806];
	n2 = [2/3, 0.018834; 2/5, 0.0127566; 2/7, 0.0135327; 2/9, 0.0139099; 2/11, 0.013983; 2/13, 0.013992];
	n3 = [3/4, 0.0000278118; 3/5, 0.0000727916; 3/7, 0.000110165; 3/8, 0.0000970488];
    
    figure;
    hold on
    plot(n1(:,1),n1(:,2),'o','MarkerEdgeColor',Colour_cube(7,:),'MarkerFaceColor',Colour_cube(7,:),'MarkerSize',5)
    plot(n2(:,1),n2(:,2),'s','MarkerEdgeColor',Colour_cube(3,:),'MarkerFaceColor',Colour_cube(3,:),'MarkerSize',6)
    plot(n3(:,1),n3(:,2),'^','MarkerEdgeColor',Colour_cube(2,:),'MarkerFaceColor',Colour_cube(2,:),'MarkerSize',5)
    hold off
    axis([0.0, 0.8, -0.001, 0.022]);
    box on
    l = legend('\large{}$n_\theta = 1$', '\large{}$n_\theta = 2$', '\large{}$n_\theta = 3$');
    set(l,'Box', 'off','Color','none');
    set(l, 'Position', [0.2 0.25 0.2 0.1]);
    %ylabel('\Large{}RMS $\Delta p_\mathrm{jump}/(\dot{p}_\mathrm{ad} \tau_\mathrm{res})$\vspace{0.2cm}')
    ylabel('\Large{}RMS relative enhancement $\delta p_\mathrm{rms}$\vspace{0.2cm}')
    xlabel('\Large{}Resonance ratio $\nu$')
    set(gca,'YTickLabel',{'$0.000$','','$0.004$','','$0.008$','','$0.012$', '', '$0.016$', '', '$0.020$'})
    set(gca,'XTickLabel',{'$0.0$','','$0.2$','','$0.4$','','$0.6$','','$0.8$'})
    
    laprint(gcf,'nu_rms_p')

end

