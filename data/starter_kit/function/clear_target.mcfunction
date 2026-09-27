# ターゲットをクリア
# 使用方法: /function starter_kit:clear_target
# 必要権限: OP権限レベル2以上

# タグを削除
tag @a remove starter_kit_target

# メッセージ
tellraw @a {"text":"装備配布のターゲットがクリアされました","color":"gray"}
