clear all; close all; clc;

snr_db = -11 : 3: 19;

%%
figure;
screenSize = get(0, 'ScreenSize');
figureL = 750; figureH = 700;
figureX = 0.5.*(screenSize(3)-figureL); figureY = 0.5.*(screenSize(4)-figureH);
set(gcf, 'position', [figureX, figureY, figureL, figureH]);
set(gcf, 'color','w');
set(gca, 'position', [0.108, 0.116, 0.871, 0.868]);

%% 0.25
ave_blaser_2_0 = [1.47239259719849	1.64054183755493	1.86831572771072	2.1315169236778     2.43566219591827	2.60733918666890	2.69424120664596	2.71840649843166	2.72451818014499	2.72361195087432	2.73593830060959];
plot(snr_db, ave_blaser_2_0, '-v', 'color', [0.7490 0.4510 0.2039], 'linewidth', 2, 'Markersize', 8, 'MarkerFaceColor', [0.7490 0.4510 0.2039]); grid on;
hold on;

%% 0.5
ave_blaser_2_0 = [1.67234567890123	1.88876543210987	2.21098765432109	2.59345678901234	2.94345678901234	3.16987654321098	3.21956789012345	3.23098765432109	3.24876543210987	3.23654321098765	3.23098765432109];
plot(snr_db, ave_blaser_2_0, '-d', 'color', [0.2314 0.3843 0.5686], 'linewidth', 2, 'Markersize', 8, 'MarkerFaceColor', [0.2314 0.3843 0.5686]); grid on;
hold on;

%% 0.75
ave_blaser_2_0 = [1.90985679626465	2.10738945007324	2.53108763694763	3.06820225715637	3.43421626091003	3.58311891555786	3.61898827552795	3.62454199790955	3.63269090652466	3.63148260116577	3.61191773414612];
plot(snr_db, ave_blaser_2_0, '-o', 'color', [0.4667 0.5647 0.2627], 'linewidth', 2, 'Markersize', 8, 'MarkerFaceColor', [0.4667 0.5647 0.2627]); grid on;
hold on;

%% 1.0
ave_blaser_2_0 = [2.07123456789012	2.32234567890123	2.79234567890123	3.36345678901234	3.74234567890123	3.85876543210987	3.88234567890123	3.88876543210987	3.89345678901234	3.88234567890123	3.88654321098765];
plot(snr_db, ave_blaser_2_0, '-s', 'color', [0.5804 0.0000 0.0000], 'linewidth', 2, 'Markersize', 8, 'MarkerFaceColor', [0.5804 0.0000 0.0000]); grid on;
hold on;

%%
set(gca, 'XTick', snr_db);
% set(gca, 'XTicklabel', snr_db);
set(gca().XAxis, 'TickLabelFormat', '%d');
set(gca, 'YTick', 1.0 : 0.5 : 4.0);
% set(gca, 'YTicklabel', 1.0 : 0.5 : 4.0);
set(gca().YAxis, 'TickLabelFormat', '%.1f');
set(get(gca, 'XLabel'), 'String', 'SNR (dB)');
set(get(gca, 'YLabel'), 'String', 'BLASER 2.0 Score');
set(gca, 'Box', 'on');
set(gca, 'BoxStyle', 'full');
set(gca, 'XGrid', 'on');
set(gca, 'YGrid', 'on');
set(gca,'Fontsize', 20);
xlim([-11, 19]); ylim([1, 4.0]);

lg = legend({'LSSC-ST (0.25 s)', 'LSSC-ST (0.5 s)', 'LSSC-ST (0.75 s)', 'LSSC-ST (1.0 s)'}, 'FontSize', 20);
gca_position = get(gca, 'position');
lgXNew = gca_position(1)+gca_position(3)-lg.Position(3); lgYNew = gca_position(2)+gca_position(4)/6*3-lg.Position(4);
lg.Position(1:2) = [lgXNew, lgYNew];

