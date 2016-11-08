function plot_emri_pop

    Colour_cube = [0 0 0
        213/255 94/255 0 % Vermillion
        230/255 159/255 0 % Orange
        240/255 228/255 66/255 % Yellow
        0 158/255 115/255 % Bluish green
        86/255 180/255 233/255 % Sky blue
        0 114/255 178/255 % Blue
        204/255 121/255 167/255 % Reddish purple
        0.5 0.5 0.5]; % Gray

    % From generate_population.nb
    lowSNR = load('low.dat');
    highSNR = load('high.dat');
    
    lowCount = length(lowSNR)
    highCount = length(highSNR)

    figure;
    hold on
    t_bins = logspace(4,7,31);
    countL = histc(lowSNR(1,:),t_bins)/(lowCount);
    countH = histc(highSNR(1,:),t_bins)/(highCount);
    bar(t_bins,countL,'histc');
    bar(t_bins,countH,'histc');
    delete(findobj('marker','*'))
    h = findobj(gca,'Type','patch');
    set(h(1),'FaceColor',Colour_cube(2,:),'EdgeColor',Colour_cube(2,:));
    set(h(2),'FaceColor',Colour_cube(6,:),'EdgeColor',Colour_cube(6,:));
    stairs([0, t_bins],[0, countL],'k','LineWidth',0.8);
    stairs([0, t_bins],[0, countH],'k--','LineWidth',1.6);
    hold off
    box on
    set(gca, 'XScale','log')
    set(gca, 'Layer','top')
    xlim([1e4, 1e7])
    ylabel('\Large{}Fraction per bin')
    xlabel('\Large{}Mass $M/M_\odot$')
    set(gca,'YTickLabel',{'$0.00$','','$0.02$','','$0.04$','','$0.06$','','$0.08$','','$0.10$'})
    %set(gca,'XTickLabel',{'$10^4$','$10^5$','$10^6$','$10^7$'})
    laprint(gcf, 'res_pop_M');
    
    figure;
    hold on
    t_bins = linspace(0,1,31);
    countL = histc(lowSNR(2,:),t_bins)/(lowCount);
    countH = histc(highSNR(2,:),t_bins)/(highCount);
    bar(t_bins,countL,'histc');
    bar(t_bins,countH,'histc');
    delete(findobj('marker','*'))
    h = findobj(gca,'Type','patch');
    set(h(1),'FaceColor',Colour_cube(2,:),'EdgeColor',Colour_cube(2,:));
    set(h(2),'FaceColor',Colour_cube(6,:),'EdgeColor',Colour_cube(6,:));
    stairs([0, t_bins],[0, countL],'k','LineWidth',0.8);
    stairs([0, t_bins],[0, countH],'k--','LineWidth',1.6);
    hold off
    box on
    set(gca, 'Layer','top')
    xlim([0, 1])
    ylabel('\Large{}Fraction per bin')
    xlabel('\Large{}Dimensionless spin $a_\ast$')
    set(gca,'YTickLabel',{'$0.00$','$0.01$','$0.02$','$0.03$','$0.04$','$0.05$','$0.06$'})
    set(gca,'XTickLabel',{'$0.0$','$0.2$','$0.4$','$0.6$','$0.8$','$1.0$'})
    laprint(gcf, 'res_pop_a')
    
    figure;
    hold on
    t_bins = linspace(0,1.5,31);
    countL = histc(lowSNR(3,:),t_bins)/(lowCount);
    countH = histc(highSNR(3,:),t_bins)/(highCount);
    bar(t_bins,countL,'histc');
    bar(t_bins,countH,'histc');
    delete(findobj('marker','*'))
    h = findobj(gca,'Type','patch');
    set(h(1),'FaceColor',Colour_cube(2,:),'EdgeColor',Colour_cube(2,:));
    set(h(2),'FaceColor',Colour_cube(6,:),'EdgeColor',Colour_cube(6,:));
    stairs([0, t_bins],[0, countL],'k','LineWidth',0.8);
    stairs([0, t_bins],[0, countH],'k--','LineWidth',1.6);
    hold off
    box on
    set(gca, 'Layer','top')
    xlim([0, 1.5])
    ylabel('\Large{}Fraction per bin')
    xlabel('\Large{}Redshift $z$')
    set(gca,'YTickLabel',{'$0.00$','','$0.02$','','$0.04$','','$0.06$','','$0.08$','','$0.10$'})
    set(gca,'XTickLabel',{'$0.0$','$0.5$','$1.0$','$1.5$'})
    laprint(gcf, 'res_pop_z')
    
    figure;
    hold on
    t_bins = linspace(2,10,31);
    countL = histc(lowSNR(4,:),t_bins)/(lowCount);
    countH = histc(highSNR(4,:),t_bins)/(highCount);
    bar(t_bins,countL,'histc');
    bar(t_bins,countH,'histc');
    delete(findobj('marker','*'))
    h = findobj(gca,'Type','patch');
    set(h(1),'FaceColor',Colour_cube(2,:),'EdgeColor',Colour_cube(2,:));
    set(h(2),'FaceColor',Colour_cube(6,:),'EdgeColor',Colour_cube(6,:));
    stairs([0, t_bins],[0, countL],'k','LineWidth',0.8);
    stairs([0, t_bins],[0, countH],'k--','LineWidth',1.6);
    hold off
    box on
    set(gca, 'Layer','top')
    xlim([1,10])
    ylabel('\Large{}Fraction per bin')
    xlabel('\Large{}Plunge semilatus rectum $p$')
    set(gca,'YTickLabel',{'$0.00$','$0.02$','$0.04$','$0.06$','$0.08$','$0.10$','$0.12$','$0.14$','$0.16$'})
    set(gca,'XTickLabel',{'$1$','$2$','$3$','$4$','$5$','$6$','$7$','$8$','$9$','$10$'})
    laprint(gcf, 'res_pop_p')
    
    figure;
    hold on
    t_bins = logspace(-4,0,31);
    countL = histc(lowSNR(5,:),t_bins)/(lowCount);
    countH = histc(highSNR(5,:),t_bins)/(highCount);
    bar(t_bins,countL,'histc');
    bar(t_bins,countH,'histc');
    delete(findobj('marker','*'))
    h = findobj(gca,'Type','patch');
    set(h(1),'FaceColor',Colour_cube(2,:),'EdgeColor',Colour_cube(2,:));
    set(h(2),'FaceColor',Colour_cube(6,:),'EdgeColor',Colour_cube(6,:));
    stairs([0, t_bins],[0, countL],'k','LineWidth',0.8);
    stairs([0, t_bins],[0, countH],'k--','LineWidth',1.6);
    hold off
    box on
    set(gca, 'XScale','log')
    set(gca, 'Layer','top')
    xlim([1e-4, 1])
    ylabel('\Large{}Fraction per bin')
    xlabel('\Large{}Plunge eccentricity $e$')
    set(gca,'YTickLabel',{'$0.00$','$0.02$','$0.04$','$0.06$','$0.08$','$0.10$','$0.12$'})
    %set(gca,'XTickLabel',{'$10^{-4}$','$10^{-3}$','$10^{-2}$','$10^{-1}$','$1$'})
    laprint(gcf, 'res_pop_e')
    
    figure;
    hold on
    t_bins = linspace(-1,1,31);
    countL = histc(lowSNR(6,:),t_bins)/(lowCount);
    countH = histc(highSNR(6,:),t_bins)/(highCount);
    bar(t_bins,countL,'histc');
    bar(t_bins,countH,'histc');
    delete(findobj('marker','*'))
    h = findobj(gca,'Type','patch');
    set(h(1),'FaceColor',Colour_cube(2,:),'EdgeColor',Colour_cube(2,:));
    set(h(2),'FaceColor',Colour_cube(6,:),'EdgeColor',Colour_cube(6,:));
    stairs([-1, t_bins],[0, countL],'k','LineWidth',0.8);
    stairs([-1, t_bins],[0, countH],'k--','LineWidth',1.6);
    hold off
    box on
    set(gca, 'Layer','top')
    xlim([-1, 1])
    ylabel('\Large{}Fraction per bin')
    xlabel('\Large{}Inclination $\cos \iota$')
    set(gca,'YTickLabel',{'$0.00$','$0.01$','$0.02$','$0.03$','$0.04$','$0.05$','$0.06$','$0.07$'})
    set(gca,'XTickLabel',{'$-1.0$','$-0.5$','$0.0$','$0.5$','$1.0$'})
    laprint(gcf, 'res_pop_iota')
    
    figure;
    hold on
    t_bins = linspace(0,2,31);
    countL = histc(lowSNR(7,:),t_bins)/(lowCount);
    countH = histc(highSNR(7,:),t_bins)/(highCount);
    bar(t_bins,countL,'histc');
    bar(t_bins,countH,'histc');
    delete(findobj('marker','*'))
    h = findobj(gca,'Type','patch');
    set(h(1),'FaceColor',Colour_cube(2,:),'EdgeColor',Colour_cube(2,:));
    set(h(2),'FaceColor',Colour_cube(6,:),'EdgeColor',Colour_cube(6,:));
    stairs([0, t_bins],[0, countL],'k','LineWidth',0.8);
    stairs([0, t_bins],[0, countH],'k--','LineWidth',1.6);
    hold off
    box on
    set(gca, 'Layer','top')
    xlim([0, 2])
    ylabel('\Large{}Fraction per bin')
    xlabel('\Large{}Signal duration $t_\mathrm{insp}/\mathrm{yr}$')
    set(gca,'YTickLabel',{'$0.00$','$0.01$','$0.02$','$0.03$','$0.04$','$0.05$','$0.06$'})
    set(gca,'XTickLabel',{'$0.0$','$0.5$','$1.0$','$1.5$','$2.0$'})
    laprint(gcf, 'res_pop_t')
    
    figure;
    hold on
    t_bins = linspace(0,50,51);
    countL = histc(lowSNR(8,:),t_bins);
    countH = histc(highSNR(8,:),t_bins);
    bar(t_bins,countL,'histc');
    bar(t_bins,countH,'histc');
    %bar(t_bins,log10(countL+eps),'histc');
    %bar(t_bins,log10(countH+eps),'histc');
    delete(findobj('marker','*'))
    h = findobj(gca,'Type','patch');
    set(h(1),'FaceColor',Colour_cube(2,:),'EdgeColor',Colour_cube(2,:));
    set(h(2),'FaceColor',Colour_cube(6,:),'EdgeColor',Colour_cube(6,:));
    stairs([0, t_bins],[0, countL],'k','LineWidth',0.8);
    stairs([0, t_bins],[0, countH],'k--','LineWidth',1.6);
    %stairs([0, t_bins],[0, log10(countL+eps)],'k','LineWidth',0.8);
    %stairs([0, t_bins],[0, log10(countH+eps)],'k--','LineWidth',1.6);
    hold off
    box on
    set(gca, 'Layer','top')
    xlim([0,50])
    %ylim([0,3])
    ylabel('\Large{}Count per bin')
    xlabel('\Large{}Signal-to-noise ratio $\rho_\mathrm{AK}$')
    set(gca,'YTickLabel',{'$0$','$100$','$200$','$300$','$400$','$500$','$600$','$700$','$800$','$900$'})
    set(gca,'XTickLabel',{'$0$','$10$','$20$','$30$','$40$','$50$'})
    laprint(gcf, 'res_pop_SNR')
    

end