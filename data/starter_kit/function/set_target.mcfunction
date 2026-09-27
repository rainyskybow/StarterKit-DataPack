# 最も近いプレイヤーをターゲットに設定
# 使用方法: /function starter_kit:set_target
# 必要権限: OP権限レベル2以上

# 既存のタグをクリア
tag @a remove starter_kit_target

# 最も近いプレイヤーにタグを付与
tag @p add starter_kit_target

# メッセージ
tellraw @a[tag=starter_kit_target] {"text":"あなたが装備配布の対象に選ばれました","color":"yellow"}
