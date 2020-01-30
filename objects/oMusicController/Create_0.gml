/// @description Insert description here
// You can write your code in this editor

sfx_volume = 1;
music_volume = 1;

audio_group_load(audiogroup_music);
audio_group_load(audiogroup_sfx);

sfx_audios = [];
sfx_audios[e_sfx.collision] = sfx_collision;
sfx_audios[e_sfx.selection] = sfx_selection;


music_audios = [];
music_audios[e_bgm.newbark_town] = bgm_newbark_town;