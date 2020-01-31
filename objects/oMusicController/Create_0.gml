/// @description Load Audio Groups

sfx_volume = 1;
music_volume = 0.75;

audio_channel_num(16);
audio_group_load(audiogroup_default);

if (audio_group_is_loaded(audiogroup_default))
{
	g_audio_play(bgm_newbark_town, g_audio_music_volume, 0, true, 100);
}
