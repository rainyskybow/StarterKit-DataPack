# 初期装備配布データパック

Minecraft Java Edition用のデータパックです。プレイヤーに初期装備を配布できます。

## 配布内容

- **防具**
  - 金のヘルメット
  - 鉄の胸当て
  - 鉄のレギンス
  - 鉄のブーツ

- **ツール**
  - 鉄のピッケル（幸運II）
  - 鉄の剣（ドロップ増加II）

## インストール方法

1. このフォルダを `.minecraft/saves/<ワールド名>/datapacks/` にコピーします
2. ゲーム内で `/reload` コマンドを実行します
3. データパックが読み込まれたことを確認します

## 必要な権限

**このデータパックの全ての機能を使用するには、OP権限（レベル2以上）が必要です。**

権限がないプレイヤーが実行しようとすると、「You do not have permission to use this command」というエラーが表示されます。

OP権限を付与するには、サーバー管理者が以下のコマンドを実行してください:
```
/op <プレイヤー名>
```

## 使用方法

### 基本的な流れ

1. **対象プレイヤーを設定**
2. **装備を配布**

### コマンド一覧

#### 1. ヘルプを表示
```
/function starter_kit:help
```
ゲーム内でクリック可能なヘルプメッセージを表示します。

#### 2. 最も近いプレイヤーを対象に設定
```
/function starter_kit:set_target
```
コマンドを実行した場所から最も近いプレイヤーを対象に設定します。

#### 3. 全プレイヤーを対象に設定
```
/function starter_kit:set_target_all
```
サーバー内の全プレイヤーを対象に設定します。

#### 4. 特定のプレイヤーを対象に設定
```
/tag <プレイヤー名> add starter_kit_target
```
例: `/tag Steve add starter_kit_target`

プレイヤーセレクターも使用可能:
- `/tag @p add starter_kit_target` - 最も近いプレイヤー
- `/tag @a[distance=..10] add starter_kit_target` - 10ブロック以内の全プレイヤー
- `/tag @r add starter_kit_target` - ランダムなプレイヤー

#### 5. 装備を配布
```
/function starter_kit:give_kit
```
対象に設定されたプレイヤーに装備を配布します。配布後、ターゲットタグは自動的に削除されます。

#### 6. ターゲットをクリア
```
/function starter_kit:clear_target
```
設定された対象を全てクリアします。

## 使用例

### 例1: 新規プレイヤーに装備を配布
```
/tag 新規プレイヤー名 add starter_kit_target
/function starter_kit:give_kit
```

### 例2: 自分に装備を配布
```
/tag @s add starter_kit_target
/function starter_kit:give_kit
```

### 例3: 全員に装備を配布
```
/function starter_kit:set_target_all
/function starter_kit:give_kit
```

## カスタマイズ

`data/starter_kit/functions/give_kit.mcfunction` を編集することで、配布するアイテムや数量を変更できます。

### エンチャントの構文 (1.20.5以降)
```
/give @a[tag=starter_kit_target] minecraft:iron_pickaxe[enchantments={levels:{"minecraft:fortune":2}}] 1
```

### 古いバージョン (1.20.4以前)
```
/give @a[tag=starter_kit_target] minecraft:iron_pickaxe{Enchantments:[{id:"minecraft:fortune",lvl:2}]} 1
```

## トラブルシューティング

### データパックが読み込まれない
- `/datapack list` でデータパックが表示されるか確認
- `/reload` でリロードを試す
- `pack.mcmeta` の構文エラーがないか確認

### 「You do not have permission to use this command」エラー
- OP権限が必要です。サーバー管理者に `/op <あなたの名前>` を実行してもらってください
- シングルプレイの場合は、ESCメニューから「LANに公開」→「チートを許可: ON」にしてください

### アイテムが配布されない
- `/tag @s add starter_kit_target` でタグが付与されるか確認
- `/function starter_kit:help` でヘルプが表示されるか確認

### エンチャントが機能しない
- Minecraftのバージョンに合わせてエンチャント構文を変更してください

## バージョン情報

- **pack_format**: 48 (Minecraft 1.21.x対応)
- 古いバージョンで使用する場合は、`pack.mcmeta` の `pack_format` を変更してください
  - 1.20.x: 41
  - 1.19.x: 10
  - 1.18.x: 9

## ライセンス
MIT LICENSE
