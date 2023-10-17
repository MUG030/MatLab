% サンプルデータの生成
numPoints = 200;
numClusters = 3;
rng(1); % 乱数のシードを設定
data = [randn(numPoints, 2) + 2; randn(numPoints, 2) - 2; randn(numPoints, 2)]; % 3つのクラスタを生成

% k-meansクラスタリングの実行
opts = statset('Display', 'final');
[idx, centers] = kmeans(data, numClusters, 'Distance', 'sqeuclidean', 'Replicates', 5, 'Options', opts);

% クラスタごとに色を指定
colors = ['r', 'g', 'b'];

% データの可視化
figure;
hold on;
for i = 1:numClusters
    clusterPoints = data(idx == i, :);
    scatter(clusterPoints(:, 1), clusterPoints(:, 2), [], colors(i), 'filled');
end
scatter(centers(:, 1), centers(:, 2), 100, 'k', 'filled', 'Marker', 'x');
legend('Cluster 1', 'Cluster 2', 'Cluster 3', 'Centroids');
title('k-means Clustering Result');
xlabel('X');
ylabel('Y');
hold off;
