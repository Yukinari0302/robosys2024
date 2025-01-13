# robosys2024
## ロボットシステム学課題リポジトリ

## 概要
このプログラムは、体脂肪率と身長、体重を入力として受け取り、BMI(Body Mass Index)を算出、体型の判別結果の表示を行うツールです。痩せ体型、標準体型、肥満体型の3つの判別をした後、アドバイスが提供されます。
## 必要なソフトウェア
Python テスト済みバージョン:3.7以上(3.11まで動作確認済み)
## テスト環境
Ubuntu 22.04LTS

### インストール手順
1. リポジトリをクローン
   ```bash
   git clone https://github.com/Yukinari0302/robosys2024
   ```
2. ディレクトリへ移動
   ```bash
   cd robosys2024
   ```
3. 実行権限を付与
   ```bash
   chmod +x 1_taikei
   ```
## 実行方法
### 1_kadaiについて
体脂肪率、身長、体重を入力するとBMIを計算し、体型の評価とBMIを出力します。
### 実行コード
```bash
echo "OO.O% OO.Ocm OO.Okg" | ./1_taikei
```
Oの部分には当てはまる数字を書いてください。

### 例1: 体脂肪率 8.5%、身長 170cm、体重 65kg の場合
- 実行
```bash
echo "8.5% 170cm 65kg" | ./1_taikei
```
- 実行結果
```bash
BMI: 22.49
あなたは痩せ体型と判別されました。
しっかりご飯を食べましょう。
```
### 例2: 体脂肪率 30%、 身長160cm、 体重 70kg の場合
- 実行
```bash
echo "30% 160cm 70kg" | ./1_taikei
```
-実行結果
```bash
BMI:27.34
あなたは肥満体型と判断されました。
しっかり運動しましょう。
```
## エラーケース
数値以外の文字が入力された場合：
- 実行
```bash
echo "abc 170cm 65kg" | ./1_taikei
```
- 実行結果
```bash
エラー: 入力形式が正しくありません。
例: echo '22.5% 170cm 65kg' | ./1_taikei
```
### 注意
体脂肪率は0%から100%の間の数値を記入するようにしてください。
## ライセンス
- このソフトウェアパッケージは，3条項BSDライセンスの下，再頒布および使用が許可されます。
- このパッケージのコードの一部は、下記のスライド（CC-BY-SA 4.0 by Ryuichi Ueda）のものを，本人の許可を得て自身の著作としたものです。
[https://github.com/ryuichiueda/slides_marp/tree/master/robosys2024]
- © 2024 Yukinari Takahashi
