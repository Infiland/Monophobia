function scr_collision() {
	if key_right { x -= playerspeed
	sprite_index = s_playerrunning
		}
	if key_left { x += playerspeed
	sprite_index = s_playerrunning
		}
	if key_up { y += playerspeed
	sprite_index = s_playerrunningup
		}
	if key_down { y -= playerspeed
	sprite_index = s_playerrunningup
		}


}
