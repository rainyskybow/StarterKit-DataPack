# 初期装備を配布する関数
# 使用方法: /function starter_kit:give_kit
# 対象: starter_kit_target タグが付いているプレイヤー
# 必要権限: OP権限レベル2以上

# 金のヘルメット
give @a[tag=starter_kit_target] minecraft:golden_helmet 1

# 鉄の胸当て
give @a[tag=starter_kit_target] minecraft:iron_chestplate 1

# 鉄のレギンス
give @a[tag=starter_kit_target] minecraft:iron_leggings 1

# 鉄のブーツ
give @a[tag=starter_kit_target] minecraft:iron_boots 1

# 鉄のピッケル（幸運II）
give @a[tag=starter_kit_target] minecraft:iron_pickaxe[enchantments={levels:{"minecraft:fortune":2}}] 1

# 鉄の剣（ドロップ増加II）
give @a[tag=starter_kit_target] minecraft:iron_sword[enchantments={levels:{"minecraft:looting":2}}] 1

# メッセージを表示
tellraw @a[tag=starter_kit_target] {"text":"初期装備を受け取りました！","color":"gold","bold":true}

# タグを削除
tag @a[tag=starter_kit_target] remove starter_kit_target
