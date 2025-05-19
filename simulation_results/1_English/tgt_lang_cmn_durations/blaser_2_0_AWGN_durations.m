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
ave_blaser_2_0 = [2.02274183273315	2.31409716606140	2.54413004875183	2.64891242980957	2.69350790977478	2.71545006942749	2.72631931304932	2.73988438606262	2.71810244560242	2.74094701766968	2.72731852531433];
plot(snr_db, ave_blaser_2_0, '-v', 'color', [0.7490 0.4510 0.2039], 'linewidth', 2, 'Markersize', 8, 'MarkerFaceColor', [0.7490 0.4510 0.2039]); grid on;
hold on;

%% 0.5
ave_blaser_2_0 = [2.25493278121948	2.69371871948242	3.03873493194580	3.15650179862976	3.19939769744873	3.21138596534729	3.23810482978821	3.23187279701233	3.25294115066528	3.24317456245422	3.24301887512207];
plot(snr_db, ave_blaser_2_0, '-d', 'color', [0.2314 0.3843 0.5686], 'linewidth', 2, 'Markersize', 8, 'MarkerFaceColor', [0.2314 0.3843 0.5686]); grid on;
hold on;

%% 0.75
ave_blaser_2_0 = [2.46987462043762	3.04399299621582	3.49514603614807	3.59996557235718	3.61002159118652	3.61716985702515	3.63423132896423	3.63999056816101	3.61496520042419	3.62204551696777	3.60862755775452];
plot(snr_db, ave_blaser_2_0, '-o', 'color', [0.4667 0.5647 0.2627], 'linewidth', 2, 'Markersize', 8, 'MarkerFaceColor', [0.4667 0.5647 0.2627]); grid on;
hold on;

%% 1.0
ave_blaser_2_0 = [2.70395827162591	3.30010739425182	3.74821694531720	3.86058962175431	3.88213487219643	3.89423846120475	3.89311728431567	3.89501284719355	3.89348726193812	3.89410584721987	3.89377419283541];
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

