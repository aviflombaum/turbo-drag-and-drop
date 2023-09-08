class PlaylistsController < ApplicationController
  def new
    @playlist = Playlist.new
  end

  def create
    @playlist = Playlist.new(playlist_params)

    render :new, status: 422 unless @playlist.save
  end

  private

  def playlist_params
    params.require(:playlist).permit(:name)
  end
end
