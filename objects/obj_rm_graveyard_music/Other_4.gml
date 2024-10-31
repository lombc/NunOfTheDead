// Play the music (assuming you have an audio asset named `snd_graveyard_music`)
if (!audio_is_playing(snd_rm_graveyard)) {
    audio_play_sound(snd_rm_graveyard, 1, true); // Play on loop
}