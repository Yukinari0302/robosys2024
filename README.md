# robosys2024
# 1_taikei - 体脂肪率とBMI判定ツール

## 概要
このプログラムは、BMI（Body Mass Index）と体脂肪率に基づいて体型を判別するツールです。体脂肪率と身長、体重を入力として受け取り、その結果をもとに体型（痩せ体型、標準体型、肥満体型）を表示します。また、BMIも計算され、アドバイスが提供されます。

## インストール方法

このプロジェクトを使用するには、Python3が必要です。

### 必要なソフトウェア
- Python 3.x
- その他依存関係（例: `pip install -r requirements.txt`）

### インストール手順
1. リポジトリをクローンします：
   ```bash
   git clone https://github.com/yourusername/your-repo-name.git
   ```
2. プロジェクトディレクトリに移動します：
   ```bash
   cd your-repo-name
   ```
3. 依存関係をインストールします：
   ```bash
   pip install -r requirements.txt
   ```
## 使用方法

以下のコマンドでプログラムを実行できます：
```bash
python main.py --option value
```
python 1_taikei.py 8.5 170 65
## 実行例

例1: 体脂肪率 8.5%、身長 170cm、体重 65kg の場合
```bash
echo "8.5% 170cm 65kg" | ./1_taikei
BMI: 22.49
あなたは痩せ体型と判別されました。
しっかりご飯を食べましょう。
## エラーケース
数値以外の文字が入力された場合：
```bash
echo "abc 170cm 65kg" | ./1_taikei
エラー: 入力形式が正しくありません。
例: echo '22.5% 170cm 65kg' | ./1_taikei
## ライセンス
このプロジェクトはMITライセンスの下で公開されています。
詳細はLICENSEファイルを参照してください。
## 貢献方法

1. このリポジトリをフォークしてください。
2. 新しいブランチを作成し、変更を加えてください。
3. プルリクエストを作成し、提案してください。
## 参考リンク
- [Python公式ドキュメント](https://docs.python.org/3/)
- [関連ツールのリンク](https://example.com)

