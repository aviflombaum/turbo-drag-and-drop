class PlaylistsController < ApplicationController
  def new
    @playlist = Playlist.new
  end

  def create
  end
end
