function plot_sinusoid

    Colour_cube = [0 0 0
            213/255 94/255 0 % Vermillion
            230/255 159/255 0 % Orange
            240/255 228/255 66/255 % Yellow
            0 158/255 115/255 % Bluish green
            86/255 180/255 233/255 % Sky blue
            0 114/255 178/255 % Blue
            204/255 121/255 167/255 % Reddish purple
            0.5 0.5 0.5]; % Gray

    % Taken from globalpar_analysis.nb
    qlin = linspace(-pi,pi,201);
    qs = [-1.2977e+00, -5.7704e-01, 1.4589e-01, -6.2399e-01, -1.5435e+00, -1.1571e+00, -1.2257e+00, -2.2139e+00, 6.4122e-01, -4.2559e+00, -4.6586e+00, 2.6969e+00, -2.4462e+00, 4.1755e+00, 3.3515e+00, -4.6394e+00, -2.3992e+00, 4.0486e-01, -2.3098e+00, 9.4632e-01, 1.1747e+00, -1.6414e+00, 2.2971e-01, 4.3113e-01, 2.5457e+00, -1.5805e+00, -1.3057e-01, 3.3858e+00, -2.8316e+00, -5.1256e-01, -4.5870e+00, -7.5156e-01, 5.9797e-01, -7.7956e-01, 1.4353e+00, -6.4838e-02, 9.2073e-01, 1.5137e-01, 4.1759e+00, -1.5526e+00, -1.3687e+00, 3.6658e-02, 1.0859e+00, -4.7903e-01, -1.4892e+00, 3.6222e+00, 1.3355e+00, -8.1718e-01, 3.0435e+00, 3.5121e+00, -5.0988e-01, -2.3025e+00, -3.9020e-02, 3.1936e+00, -3.1434e+00, -2.4255e+00, 2.0789e+00, -2.3374e+00, -1.4393e+00, 1.5602e+00, -2.8709e+00, 1.3821e+00, -1.3241e+00, 1.5328e+00, 3.0532e+00, -5.0289e-01, 4.1445e+00, 2.6411e+00, 6.7835e-01, 1.5215e+00, 2.1367e+00, -1.8208e+00, -4.0846e+00, -4.1386e-01, -4.3664e+00, 1.5826e+00, -1.1286e+00, -1.0235e+00, -1.7166e+00, -2.4903e+00, 5.2756e-01, 4.1695e+00, 3.0405e+00, -2.5999e+00, -1.2596e+00, 4.6726e-01, 9.8321e-01, 3.6143e+00, 3.9100e-02, -1.0802e+01, 5.5277e-01, 4.1080e+00, 2.6724e+00, -5.5903e-01, 4.3292e+00, 3.7631e-01, -1.0361e+00, 2.5161e+00, 3.5021e+00, 7.7293e-01];

    % Fits
    % From resonance_illustrative_analysis.nb
    Edata = [0.0179912,0.0491368,0.0557152,0.047755,0.00421374,0.0254183,0.021848,-0.0323895,0.0433212,-0.0289104,-0.00702275,-0.0538206,-0.0425565,-0.0271359,-0.0559931,-0.00811914,-0.0406641,0.0507641,-0.0368265,0.0301993,0.0184423,-0.00140015,0.0544955,0.0500705,-0.0499497,0.00209661,0.0566896,-0.055452,-0.0542218,0.0508652,-0.0110975,0.0434722,0.0448776,0.0424364,0.00384548,0.0569108,0.0314284,0.0556524,-0.0271157,0.00369366,0.0140942,0.0567134,0.0231624,0.0516821,0.00731366,-0.0499552,0.00952846,0.0409934,-0.0579821,-0.0528825,0.0509329,-0.0365014,0.0569278,-0.0576499,-0.0579186,-0.041731,-0.0314502,-0.0380428,0.0101421,-0.00333277,-0.0549832,0.00688681,0.0165568,-0.00175817,-0.0580132,0.0511062,-0.0287025,-0.0525327,0.0419194,-0.00110822,-0.0342056,-0.0116372,-0.0370244,0.0531062,-0.0232142,-0.00461873,0.0268623,0.032,-0.00571309,-0.0442446,0.0472307,-0.0274401,-0.0579882,-0.0480687,0.0200505,0.0490586,0.0283928,-0.0501862,0.0567032,-0.0149277,0.0464146,-0.0305113,-0.0532778,0.0496427,-0.0190244,0.0514796,0.0314025,-0.0490619,-0.0531193,0.0380901];
    Ldata = [0.0233538,0.0554264,0.0597172,0.0540548,0.00861611,0.0312155,0.0274422,-0.0320085,0.044434,-0.0353052,-0.0119049,-0.0604456,-0.0437265,-0.0260605,-0.0601624,-0.0131002,-0.0415212,0.0533413,-0.037098,0.0293554,0.0161018,0.00252517,0.0580549,0.0524879,-0.0567834,0.00631669,0.0619706,-0.0594012,-0.0578206,0.0570771,-0.0163117,0.0498076,0.0462675,0.0487636,0.,0.0619501,0.0307348,0.0596243,-0.0260412,0.0080547,0.0192191,0.0612798,0.0214104,0.0578532,0.0119407,-0.0525094,0.00615395,0.0472971,-0.0635705,-0.0561253,0.0571371,-0.0367074,0.0618658,-0.0625962,-0.0630909,-0.0427595,-0.0380459,-0.03849,0.0149887,-0.0079119,-0.0588057,0.00333112,0.0218288,-0.00620658,-0.0635496,0.0573148,-0.0278369,-0.0592517,0.0427921,-0.00550114,-0.0408863,-0.0088407,-0.0436554,0.0591623,-0.0292663,-0.00931402,0.0327352,0.0380933,-0.0021553,-0.045709,0.0490591,-0.026409,-0.063582,-0.0502485,0.0255438,0.0512633,0.0272937,-0.0528035,0.0612665,-0.0204285,0.0480967,-0.0298801,-0.0599451,0.0559124,-0.0172598,0.0542168,0.0374733,-0.055905,-0.0564147,0.0383503];
    Qdata = [-0.00732654,0.00672078,0.0174829,0.00582515,-0.0115705,-0.00467114,-0.0059803,-0.0189861,0.0198764,0.004077,0.0112834,-0.00887441,-0.019675,-0.0183177,-0.0176848,0.0109807,-0.019619,0.0193207,-0.0193996,0.0189923,0.0171905,-0.0130717,0.0182253,0.01944,-0.00611113,-0.0121557,0.0140237,-0.0179766,-0.0184634,0.00790851,0.0101129,0.00332121,0.0198509,0.00275504,0.0140845,0.014929,0.0191289,0.017543,-0.0183122,-0.0117155,-0.00861205,0.0162699,0.0180001,0.00850964,-0.01069,-0.0193559,0.0153807,0.00198615,-0.0143374,-0.0188415,0.00795626,-0.0193692,0.015279,-0.0161489,-0.0155478,-0.0196597,0.00307366,-0.0194802,-0.00985265,0.0122846,-0.0181782,0.0147943,-0.00781106,0.0127066,-0.0144651,0.00808322,-0.0185337,-0.00787318,0.0198667,0.0128728,0.00194036,-0.0154995,0.000717835,0.00964342,0.0061761,0.0119437,-0.00412004,-0.00206962,-0.0141379,-0.0196859,0.0197481,-0.0183665,-0.0142951,-0.0195425,-0.00662037,0.019569,0.0187663,-0.0193245,0.016302,0.00893531,0.0197977,-0.0187626,-0.00843301,0.00705264,-0.0169824,0.0191828,-0.0023166,-0.00554884,-0.0187889,0.019706];
    %A = [5.74318, 6.27568, 1.97884, 5.77853, 5.51402, 5.43833]/100;
    %x0 = [-0.0573639, -0.123107, 0.655729, -0.0585153, -0.0491112, -0.0458021];
    %c = [-0.0638342, -0.0858943, 0.00987611, -0.0642546, -0.0609777, -0.0599609]/100;
    A = [5.7383, 6.26819, 1.97833]/100;
    x0 = [-0.0554939, -0.120877, 0.654844];
    c = [0, 0, 0]/100;

    % Fix range
    q2 = (mod(qs + pi, 2 * pi) - pi);

    figure; 
    hold on
    plot(10,10,'-o','Color',Colour_cube(7,:),'LineWidth',2.2,'MarkerEdgeColor',Colour_cube(7,:),'MarkerFaceColor',Colour_cube(7,:),'MarkerSize',5)
    plot(10,10,'--s','Color',Colour_cube(3,:),'LineWidth',1.6,'MarkerEdgeColor',Colour_cube(3,:),'MarkerFaceColor',Colour_cube(3,:),'MarkerSize',6)
    plot(10,10,'-.^','Color',Colour_cube(2,:),'LineWidth',1.0,'MarkerEdgeColor',Colour_cube(2,:),'MarkerFaceColor',Colour_cube(2,:),'MarkerSize',5)
    plot(qlin, A(1) * cos(qlin - x0(1)) + c(1), '-', 'Color',Colour_cube(7,:),'LineWidth',2.2)
    plot(qlin, A(2) * cos(qlin - x0(2)) + c(2), '--','Color',Colour_cube(3,:),'LineWidth',1.6)
    plot(qlin, A(3) * cos(qlin - x0(3)) + c(3), '-.','Color',Colour_cube(3,:),'LineWidth',1.0)
    %plot(q2, A(4) * cos(q2 - x0(4)) + c(4), '-')
    %plot(q2, A(5) * cos(q2 - x0(5)) + c(5), '-')
    %plot(q2, A(6) * cos(q2 - x0(6)) + c(6), '-')
    plot(q2, Edata, 'o','MarkerEdgeColor',Colour_cube(7,:),'MarkerFaceColor',Colour_cube(7,:),'MarkerSize',5)
    plot(q2, Ldata, 's','MarkerEdgeColor',Colour_cube(3,:),'MarkerFaceColor',Colour_cube(3,:),'MarkerSize',6)
    plot(q2, Qdata, '^','MarkerEdgeColor',Colour_cube(2,:),'MarkerFaceColor',Colour_cube(2,:),'MarkerSize',5)
    hold off
    axis([-pi, pi, -0.07, 0.07]);
    box on
    l = legend('\large{}$E$', '\large{}$L_z$', '\large{}$Q$');
    set(l,'Box', 'off','Color','none');
    set(l, 'Position', [0.4 0.2 0.2 0.15]);
    %ylabel('\Large{}$\Delta \mathcal{I}^a_\mathrm{jump}/(\dot{\mathcal{I}}^a_\mathrm{ad} \tau_\mathrm{res})$\vspace{0.2cm}')
    ylabel('\Large{}Relative enhancement $\delta \mathcal{I}^a$\vspace{0.2cm}')
    xlabel('\Large{}Phase $q$')
    set(gca,'YTickLabel',{'$-0.06$','$-0.04$','$-0.02$','$0.00$','$0.02$', '$0.04$','$0.06$'})
    set(gca,'XTickLabel',{'$-3$','$-2$','$-1$','$0$','$1$','$2$', '$3$'})
    
    laprint(gcf,'q_jump')

end