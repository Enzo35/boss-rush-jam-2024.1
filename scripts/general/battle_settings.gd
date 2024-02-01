extends Node


#Get Enemy and Player, then calculate fight
@onready var enemyBoss = $Enemy

func _process(delta):
	if !enemyBoss.dead:
		$EnemyHealthLabel.text = str(enemyBoss.statsComponents.curr_health) + "/" + str(enemyBoss.statsComponents.max_health)
	else:
		$EnemyHealthLabel.text = "YOU WIN"


func _on_battle_hud_finised_turn():
	enemyBoss.enemy_turn()


func _on_enemy_fineshed_turn():
	$BattleHud.new_turn()
