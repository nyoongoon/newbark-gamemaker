///@description Play a BGM sound
///@arg sound
///@arg volume
///@arg fade_speed
///@arg loop
///@arg priority

var sound = argument0;
var volume = argument1 / 100;
var fade_speed = argument2;
var loop = argument3;
var priority = argument4;

audio_sound_gain(sound, volume, fade_speed);
return audio_play_sound(sound, priority, loop);