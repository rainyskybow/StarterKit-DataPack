# データパック読み込み時に実行される関数
# 権限レベルの設定を行う

tellraw @a {"text":"[Starter Kit] データパックが読み込まれました","color":"green"}
tellraw @a[tag=!] {"text":"[Starter Kit] OP権限が必要な関数: give_kit, set_target, set_target_all, clear_target","color":"yellow"}
