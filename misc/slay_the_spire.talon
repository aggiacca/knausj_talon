app: SlayTheSpire
-

# Testing/Debugging
position: user.test_position()


show enemy: user.show_enemy_grid()
hide enemy: user.hide_enemy_grid()

enemy <number>: user.enemy_position(number)
run start <number>: user.choose_run_start_option(number)
player: user.character_position()
potion <number>: user.potion_position(number)

chest: user.chest_position()

act reward <number>: user.boss_relic_position(number)

reward: user.spoils_1()

choose card <number>: user.reward_choose_a_card(number)

skip card: user.skip_position()
confirm card: user.confirmed_card()

proceed: 
    user.proceed()
    user.mouse_toggle_control_mouse()
    user.hide_enemy_grid()
    
select area:
    user.select_area()
    user.mouse_toggle_control_mouse()
    user.show_enemy_grid()


