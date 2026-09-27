# 全プレイヤーをターゲットに設定
# 使用方法: /function starter_kit:set_target_all
# 必要権限: OP権限レベル2以上

# 全プレイヤーにタグを付与
tag @a add starter_kit_target

# メッセージ
tellraw @a[tag=starter_kit_target] {"text":"全プレイヤーが装備配布の対象になりました","color":"yellow"}
