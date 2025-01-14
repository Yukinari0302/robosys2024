#!/bin/bash
# SPSX-FileCopyrightText: 2024 Yukinari Takahashi
# SPDX-License-Identifier: BSD-3-Clause


ng () {
    echo "テスト失敗: $1 行目が違うよ"
    res=1
}

# 初期化
res=0

# テストケース1: 低脂肪率 (10%未満)
out=$(echo "8.5 170 65" | ./kadai1_taikei 2>&1)
exp_bmi="BMI: 22.49"
exp_body_type="あなたは痩せ体型と判別されました。"
exp_message="しっかりご飯を食べましょう。"
# 出力内容の確認
bmi=$(echo "$out" | head -n 1)
body_type=$(echo "$out" | tail -n 2 | head -n 1)
message=$(echo "$out" | tail -n 1)

# 比較
[ "$bmi" = "$exp_bmi" ] || ng "$LINENO"
[ "$body_type" = "$exp_body_type" ] || ng "$LINENO"
[ "$message" = "$exp_message" ] || ng "$LINENO"

# テストケース2: 標準脂肪率 (10%～25%)
out=$(echo "20 170 65" | ./kadai1_taikei 2>&1)
exp_bmi="BMI: 22.49"
exp_body_type="あなたは標準体型と判別されました。"
exp_message="このままの体型をしっかり維持していきましょう。"
# 出力内容の確認
bmi=$(echo "$out" | head -n 1)
body_type=$(echo "$out" | tail -n 2 | head -n 1)
message=$(echo "$out" | tail -n 1)

# 比較
[ "$bmi" = "$exp_bmi" ] || ng "$LINENO"
[ "$body_type" = "$exp_body_type" ] || ng "$LINENO"
[ "$message" = "$exp_message" ] || ng "$LINENO"

# テストケース3: 高脂肪率 (25%以上)
out=$(echo "30 170 65" | ./kadai1_taikei 2>&1)
exp_bmi="BMI: 22.49"
exp_body_type="あなたは肥満体型と判別されました。"
exp_message="しっかり運動しましょう。"
# 出力内容の確認
bmi=$(echo "$out" | head -n 1)
body_type=$(echo "$out" | tail -n 2 | head -n 1)
message=$(echo "$out" | tail -n 1)

# 比較
[ "$bmi" = "$exp_bmi" ] || ng "$LINENO"
[ "$body_type" = "$exp_body_type" ] || ng "$LINENO"
[ "$message" = "$exp_message" ] || ng "$LINENO"

# テストケース4: 不正な入力 (脂肪率が範囲外)
out=$(echo "105 170 65" | ./kadai1_taikei 2>&1)
exp_error="エラー: 脂肪率は0%から100%の範囲で入力してください。"
# エラー内容の確認
error=$(echo "$out" | tail -n 1)

# 比較
[ "$error" = "$exp_error" ] || ng "$LINENO"

# テスト結果の確認
[ "$res" -eq 0 ] && echo "OK" || echo "Test failed."

exit $res
