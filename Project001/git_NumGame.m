% 数字当てゲーム

% 1から100までのランダムな数を選ぶ
targetNumber = randi([1, 100]);

fprintf('1から100の範囲でランダムな数字を選びました。当ててみてください！\n');

while true
    % プレイヤーに入力を求める
    guess = input('予想した数字を入力してください: ');

    % 入力された数字とターゲットの数字を比較
    if guess < targetNumber
        fprintf('もっと大きい数字です。\n');
    elseif guess > targetNumber
        fprintf('もっと小さい数字です。\n');
    else
        fprintf('正解です！おめでとうございます！\n');
        break;
    end
end

fprintf('ゲームを終了します。\n');
