extends Node

var master_bus = AudioServer.get_bus_index("Master")
var music_bus = AudioServer.get_bus_index("Music")
var sfx_bus = AudioServer.get_bus_index("SFX")
var menusfx_bus = AudioServer.get_bus_index("MenuSFX")

var sfx_on = 0
var music_on = 0
