export function playlistsTracks(playlistId) {
  return playlistId ? `/playlists/${playlistId}/tracks` : `/playlists/tracks`;
}
