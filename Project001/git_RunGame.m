% 障害物避けゲーム

clear; clc;

playerPosition = 5; % プレイヤーの初期位置
obstaclePositions = sort(randperm(20, 5)); % 障害物の位置（1から20の間で5つをランダムに選ぶ）

fprintf('障害物避けゲームを開始します！\n');

for i = 1:length(obstaclePositions)
    % プレイヤーと障害物を表示
    gameDisplay = repmat(' ', 1, 20);
    gameDisplay(playerPosition) = 'X';
    gameDisplay(obstaclePositions(i)) = '*';
    fprintf('%s\n', gameDisplay);
    
    % ジャンプの入力を求める
    jump = input('ジャンプしますか？ (y/n): ', 's');
    
    % ジャンプの処理
    if strcmpi(jump, 'y')
        playerPosition = playerPosition + 1; % ジャンプ
    end
    
    % 障害物に衝突したかをチェック
    if any(playerPosition == obstaclePositions)
        fprintf('障害物に衝突しました！ゲームオーバー。\n');
        break;
    end
    
    % クリア条件をチェック
    if i == length(obstaclePositions)
        fprintf('すべての障害物を避けました！クリアです！\n');
    end
end