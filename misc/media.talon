volume up: key(volup)
volume down: key(voldown)
set volume <number>: user.media_set_volume(number)
mute: key(mute)
play next: key(next)
play previous: key(prev)
# play instead of play_pause as play_pause doesn't work on mack
(play | pause): key(play)                 
