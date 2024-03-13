if !audio_group_is_loaded(music)
{
    audio_group_load(music);
}

audio_group_set_gain(music, .05, 0)
audio_group_set_gain(audiogroup_default, .20, 0)