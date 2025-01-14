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
out=$(echo "8.5 170 65" | ./kadai1_taikei 2>&1) || ng "$LINENO"
exp="BMI: 22.49\nあなたは痩せ体型と判別されました。\nしっかりご飯を食べましょう。"
[ "$out" = "$exp" ] || ng "$LINENO"

# テストケース2: 標準脂肪率 (10%～25%)
out=$(echo "20 170 65" | ./kadai1_taikei 2>&1) || ng "$LINENO"
exp="BMI: 22.49\nあなたは標準体型と判別されました。\nこのままの体型をしっかり維持していきましょう。"
[ "$out" = "$exp" ] || ng "$LINENO"

# テストケース3: 高脂肪率 (25%以上)
out=$(echo "30 170 65" | ./kadai1_taikei 2>&1) || ng "$LINENO"
exp="BMI: 22.49\nあなたは肥満体型と判別されました。\nしっかり運動しましょう。"
[ "$out" = "$exp" ] || ng "$LINENO"

# テストケース4: 不正な入力 (脂肪率が範囲外)
out=$(echo "105 170 65" | ./kadai1_taikei 2>&1) || ng "$LINENO"
exp="エラー: 脂肪率は0%から100%の範囲で入力してください。"
[ "$out" = "$exp" ] || ng "$LINENO"

# テスト結果の確認
[ "$res" -eq 0 ] && echo "OK" || echo "Test failed."

exit $res

