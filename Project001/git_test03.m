% サンプルデータの生成
numSamples = 100;
X = randn(numSamples, 2); % 2次元データ

% データの中心化
X_centered = X - mean(X);

% 共分散行列の計算
covariance_matrix = (X_centered' * X_centered) / (numSamples - 1);

% 固有値分解を行うことで主成分を求める
[eigen_vectors, eigen_values] = eig(covariance_matrix);

% データを主成分に射影
projected_data = X_centered * eigen_vectors;

% 主成分を可視化
scatter(projected_data(:, 1), projected_data(:, 2), 'b');
title('Principal Component Analysis (PCA)');
xlabel('Principal Component 1');
ylabel('Principal Component 2');
