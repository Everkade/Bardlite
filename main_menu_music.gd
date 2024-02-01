extends AudioStreamPlayer

const main_music = preload("res://Music/BardliteTitle.wav")
const level_music = preload("res://Music/BardliteFight.wav")

func _play_music(music: AudioStream, volume = 0.0):
	if stream == music:
		return
	
	stream = music
	volume_db = volume
	play()
	
func play_music_main():
	_play_music(main_music)


func play_music_level():
	_play_music(level_music)
