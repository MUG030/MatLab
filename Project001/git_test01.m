% サンプルデータの生成
numPoints = 100;
x = linspace(0, 10, numPoints); % 0から10までの間に等間隔な点を生成
y = 2 * x + 3 + 0.5 * randn(1, numPoints); % 線形関係にノイズを追加

% データの可視化
figure; % 新しい図を作成
scatter(x, y, 'b', 'filled'); % 散布図をプロット
xlabel('X'); % X軸のラベル
ylabel('Y'); % Y軸のラベル
title('Scatter Plot of Sample Data'); % グラフのタイトル

% 線形回帰によるフィッティング
p = polyfit(x, y, 1); % 1次の多項式でデータにフィット
hold on; % プロットを重ねる
plot(x, p(1)*x + p(2), 'r'); % フィットした直線をプロット
legend('Data', 'Linear Fit'); % 凡例を表示
hold off; % プロットの重ねを解除